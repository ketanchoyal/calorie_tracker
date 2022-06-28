import 'package:bloc/bloc.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, DateTime> {
  HomeBloc({
    required FirebaseService firebaseService,
  })  : _firebaseService = firebaseService,
        super(DateTime.now()) {
    on<TodayHomeEvent>(_mapTodayHomeEvent);
    on<SomeOtherDateHomeEvent>(_mapSomeOtherDateHomeEvent);
  }

  final FirebaseService _firebaseService;

  Future<void> _mapTodayHomeEvent(
    TodayHomeEvent event,
    Emitter emit,
  ) async {
    emit(DateTime.now());
  }

  Future<void> _mapSomeOtherDateHomeEvent(
    SomeOtherDateHomeEvent event,
    Emitter emit,
  ) async {
    emit(event.date);
  }

  Future<void> deleteLog(String id) async {
    await _firebaseService.deleteFoodLog(id: id, date: state);
  }
}
