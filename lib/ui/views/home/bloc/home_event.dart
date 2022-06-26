part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.today() = TodayHomeEvent;
  factory HomeEvent.of(DateTime date) = SomeOtherDateHomeEvent;
}
