import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, DateTime> {
  HomeBloc() : super(DateTime.now()) {
    on<TodayHomeEvent>(_mapTodayHomeEvent);
    on<SomeOtherDateHomeEvent>(_mapSomeOtherDateHomeEvent);
  }

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
}
