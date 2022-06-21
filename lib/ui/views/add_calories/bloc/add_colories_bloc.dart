import 'dart:async';

import 'package:calorie_tracker/core/models/food/food.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_calories_form_bloc.dart';
part 'add_colories_bloc.freezed.dart';
part 'add_colories_event.dart';
part 'add_colories_state.dart';
part 'quick_add_calories_form_bloc.dart';

class AddColoriesBloc extends Bloc<AddColoriesEvent, AddColoriesState> {
  AddColoriesBloc() : super(const AddColoriesState.initial()) {
    on<_Reset>(_mapResetEvent);
    on<_QuickAddFoodEvent>(_mapQuickAddFoodEvent);
    on<_SelectFoodEvent>(_mapSelectFoodEvent);
    on<_SubmitEvent>(_mapSubmitEvent);
  }

  @override
  void onChange(Change<AddColoriesState> change) {
    super.onChange(change);
  }

  Future<void> _mapResetEvent(
    _Reset event,
    Emitter emit,
  ) async {
    emit(const AddColoriesState.initial());
  }

  Future<void> _mapQuickAddFoodEvent(
    _QuickAddFoodEvent event,
    Emitter emit,
  ) async {
    emit(const QuickAddFoodState());
  }

  Future<void> _mapSelectFoodEvent(
    _SelectFoodEvent event,
    Emitter emit,
  ) async {
    emit(AddColoriesState.selectFood(food: event.food));
  }

  Future<void> _mapSubmitEvent(
    _SubmitEvent event,
    Emitter emit,
  ) async {
    emit(const AddColoriesState.adding());
    // Add Logic
    // event.caloriesPerServing
    emit(const AddColoriesState.success());
  }
}
