import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_bloc.freezed.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required FirebaseService firebaseService,
    required HealthService healthService,
  })  : _firebaseService = firebaseService,
        _healthService = healthService,
        super(
          HomeState(
            date: DateTime.now(),
          ),
        ) {
    on<TodayHomeEvent>(_mapTodayHomeEvent);
    on<SomeOtherDateHomeEvent>(_mapSomeOtherDateHomeEvent);
    on<HomeUpdateNutritionEvent>(_mapHomeUpdateNutritionEvent);
    on<UpdateBurnedCaloriesEvent>(_mapUpdateBurnedCaloriesEvent);
    on<CopyDataEvent>(_mapCopyDataEvent);
    getCaloresBurned();
  }

  final FirebaseService _firebaseService;
  final HealthService _healthService;

  final caloriesGoal = 2300.0;
  final proteinGoal = 173.0;
  final carbsGoal = 265.0;
  final fatGoals = 77.0;

  Stream<List<FoodLog>> get foodLogStream =>
      _firebaseService.getFoodLog(state.date).asBroadcastStream()
        ..listen(_streamListener);

  Future<void> _mapCopyDataEvent(
    CopyDataEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(copiedData: event.log));
  }

  Future<void> _mapTodayHomeEvent(
    TodayHomeEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(date: DateTime.now()));
  }

  Future<void> _mapSomeOtherDateHomeEvent(
    SomeOtherDateHomeEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(date: event.date));
  }

  FutureOr<void> _mapHomeUpdateNutritionEvent(
    HomeUpdateNutritionEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(
      state.copyWith(
        totalCalories: event.totalCalories,
        totalProtein: event.totalProtein,
        totalCarbs: event.totalCarbs,
        totalFat: event.totalFat,
        hadExtraCarbs: event.hadExtraCarbs,
        hadExtraFat: event.hadExtraFat,
        hadExtraProtein: event.hadExtraProtein,
      ),
    );
  }

  FutureOr<void> _mapUpdateBurnedCaloriesEvent(
    UpdateBurnedCaloriesEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(
      state.copyWith(totalBurnedCalories: event.burnedCalories),
    );
  }

  Future<void> deleteLog(FoodLog foodLog) async {
    await _healthService.deleteNutritionData(foodLog);
  }

  ///Change Date
  void changeDate(DateTime date) {
    if (date.isBefore(DateTime.now())) {
      add(SomeOtherDateHomeEvent(date));
    }
  }

  void updateCopiedData(FoodLog? value) {
    add(CopyDataEvent(value));
  }

  void _streamListener(List<FoodLog> event) {
    final logList = event.toSet().toList();
    if (logList.isEmpty) {
      add(
        HomeUpdateNutritionEvent(
          totalCalories: 0,
          totalProtein: 0,
          totalCarbs: 0,
          totalFat: 0,
          hadExtraCarbs: false,
          hadExtraFat: false,
          hadExtraProtein: false,
        ),
      );
    }
    if (logList.isNotEmpty) {
      final caloriesEaten = logList
          .map(
            (e) => e.totalCaloriesEaten,
          )
          .reduce((value, element) => value + element);
      final proteinEaten = logList
          .map(
            (e) => e.totalProtein ?? 0.0,
          )
          .reduce(
            (value, element) => value + element,
          );
      final carbsEaten = logList
          .map(
            (e) => e.totalCarbs ?? 0.0,
          )
          .reduce(
            (value, element) => value + element,
          );
      final fatEaten = logList
          .map(
            (e) => e.totalFat ?? 0.0,
          )
          .reduce(
            (value, element) => value + element,
          );
      add(
        HomeUpdateNutritionEvent(
          totalCalories: caloriesEaten,
          totalProtein: proteinEaten,
          totalCarbs: carbsEaten,
          totalFat: fatEaten,
          hadExtraCarbs: carbsEaten > carbsGoal,
          hadExtraFat: fatEaten > fatGoals,
          hadExtraProtein: proteinEaten > proteinGoal,
        ),
      );
    }
  }

  Future<void> addDataToHealthKit(FoodLog foodLog) async {
    await _healthService.addNutritionData(foodLog).whenComplete(() {
      print('Added ${foodLog.name} - ${foodLog.id} to health kit');
    });
  }

  Future<void> getCaloresBurned() async {
    final burnedCalories = await _healthService.getBurnedCalories();
    add(UpdateBurnedCaloriesEvent(burnedCalories: burnedCalories));
  }

  Future<void> addFoodLog() async {
    final foodLog = state.copiedData;
    updateCopiedData(null);
    if (foodLog == null) {
      return;
    }

    await _firebaseService.addCalories(
      foodLog: foodLog.copyWith(
        foodLogDate: state.date,
      ),
      foodLogDate: state.date,
    );
  }
}
