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
    // required Goals goals,
  })  : _firebaseService = firebaseService,
        _healthService = healthService,
        // _goals = goals,
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
    on<_DatesWithLogsEvent>(_mapDatesWithLogsEvent);
    getCaloresBurned(state.date);
  }

  final FirebaseService _firebaseService;
  final HealthService _healthService;

  // final Goals _goals;

  // final caloriesGoal = 2300.0;
  // double get caloriesGoal => _goals.calories;
  // // final proteinGoal = 173.0;
  // double get proteinGoal => _goals.protein;
  // // final carbsGoal = 265.0;
  // double get carbsGoal => _goals.carbs;
  // // final fatGoals = 77.0;
  // double get fatGoals => _goals.fat;

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
        // hadExtraCarbs: event.hadExtraCarbs,
        // hadExtraFat: event.hadExtraFat,
        // hadExtraProtein: event.hadExtraProtein,
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

  FutureOr<void> _mapDatesWithLogsEvent(
      _DatesWithLogsEvent event, Emitter<HomeState> emit) {
    emit(state
        .copyWith(datesWithLogs: [...state.datesWithLogs, ...event.dates]));
  }

  Future<void> deleteLog(FoodLog foodLog) async {
    await _healthService.deleteNutritionData(foodLog);
  }

  ///Change Date
  void changeDate(DateTime date) {
    if (date.isBefore(DateTime.now())) {
      add(SomeOtherDateHomeEvent(date));
    }
    getCaloresBurned(date);
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
          // hadExtraCarbs: false,
          // hadExtraFat: false,
          // hadExtraProtein: false,
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
          // hadExtraCarbs: carbsEaten > carbsGoal,
          // hadExtraFat: fatEaten > fatGoals,
          // hadExtraProtein: proteinEaten > proteinGoal,
        ),
      );
    }
  }

  Future<void> addDataToHealthKit(FoodLog foodLog) async {
    await _healthService.addNutritionData(foodLog).whenComplete(() {
      print('Added ${foodLog.name} - ${foodLog.id} to health kit');
    });
  }

  Future<void> getCaloresBurned(DateTime date) async {
    // while (true) {
    final burnedCalories = await _healthService.getBurnedCalories(date);
    add(UpdateBurnedCaloriesEvent(burnedCalories: burnedCalories));
    // await Future.delayed(Duration(seconds: 30));
    // }
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

  final List<DateTime> _datesWithLogs = [];

  Future<void> monthChange(DateTime month) async {
    if (_datesWithLogs.contains(month)) {
      return;
    }
    _datesWithLogs.add(month);
    final dates = await _firebaseService.getFoodLoggedDates(month);
    add(_DatesWithLogsEvent(dates));
  }
}
