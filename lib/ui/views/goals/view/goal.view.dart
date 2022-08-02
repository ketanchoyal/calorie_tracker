import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/ui/blocs/goals/goals_bloc.dart';
import 'package:calorie_tracker/ui/views/goals/bloc/goal_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';

part 'goal.form.dart';

class GoalView extends StatelessWidget {
  const GoalView({super.key});

  @override
  Widget build(BuildContext context) {
    final goalsBloc = BlocProvider.of<GoalsBloc>(context);
    return BlocProvider(
      create: (context) => GoalFormBloc(
        firebaseService: context.read<FirebaseService>(),
        proteinGoal: goalsBloc.state.proteinGoal,
        carbsGoal: goalsBloc.state.carbsGoal,
        fatGoal: goalsBloc.state.fatGoal,
        caloriesGoal: goalsBloc.state.caloriesGoal,
      ),
      child: const _GoalBody(),
    );
  }
}

class _GoalBody extends StatelessWidget {
  const _GoalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBlocListener<GoalFormBloc, String, String>(
      onSuccess: (context, state) {
        context.read<GoalsBloc>().getGoals();
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Goal'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          elevation: 0,
          onPressed: () {
            context.read<GoalFormBloc>().submit();
          },
          label: Row(
            children: const [
              SizedBox(width: 12),
              Text('Proceed'),
              SizedBox(width: 8),
              Icon(Icons.chevron_right)
            ],
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: const _GoalForm(),
        ),
      ),
    );
  }
}
