import 'package:calorie_tracker/ui/views/goals/bloc/goal_form_bloc.dart';
import 'package:calorie_tracker/ui/widgets/textfield.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

part 'goal.form.dart';

class GoalView extends StatelessWidget {
  const GoalView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GoalFormBloc(),
      child: const _GoalBody(),
    );
  }
}

class _GoalBody extends StatelessWidget {
  const _GoalBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
