import 'dart:io';
import 'dart:math';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:calorie_tracker/app/theme.dart';
import 'package:calorie_tracker/core/enums/food_type.enum.dart';
import 'package:calorie_tracker/core/models/food_log/food_log.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:calorie_tracker/ui/blocs/auth/auth_bloc.dart';
import 'package:calorie_tracker/ui/blocs/goals/goals_bloc.dart';
import 'package:calorie_tracker/ui/extensions/double+extension.dart';
import 'package:calorie_tracker/ui/extensions/light_dark_color/theme+extension.dart';
import 'package:calorie_tracker/ui/utils/shape_border.dart';
import 'package:calorie_tracker/ui/views/add_calories/add_calories.dart';
import 'package:calorie_tracker/ui/views/home/bloc/home_bloc.dart';
import 'package:calorie_tracker/ui/views/settings/view/settings.view.dart';
import 'package:calorie_tracker/ui/widgets/calender.appbar.widget.dart';
import 'package:calorie_tracker/ui/widgets/swipedetector.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

part 'home.view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          logedOut: (_) {
            context.read<GoalsBloc>().resetGoals();
          },
          logedIn: (_) {
            context.read<GoalsBloc>().getGoals();
          },
        );
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) {
              context.read<GoalsBloc>().getGoals();
              return HomeBloc(
                firebaseService: context.read<FirebaseService>(),
                healthService: context.read<HealthService>(),
              );
            },
          ),
        ],
        child: const _HomeView(),
      ),
    );
  }
}
