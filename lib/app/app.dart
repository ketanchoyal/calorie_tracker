// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:calorie_tracker/app/theme.dart';
import 'package:calorie_tracker/core/services/auth/firebase_auth_service.dart';
import 'package:calorie_tracker/core/services/auth/firebase_auth_service.impl.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.dart';
import 'package:calorie_tracker/core/services/firebase/firebase_service.impl.dart';
import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:calorie_tracker/core/services/health/health_service.impl.dart';
import 'package:calorie_tracker/l10n/l10n.dart';
import 'package:calorie_tracker/ui/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return const AppView();
    return RepositoryProvider<FirebaseService>(
      create: (context) => FirebaseServiceImpl(),
      child: MultiRepositoryProvider(
        providers: [
          // RepositoryProvider<FirebaseService>(
          //   create: (context) => FirebaseServiceImpl(),
          // ),
          RepositoryProvider<FirebaseAuthService>(
            create: (context) => FirebaseAuthServiceImpl(),
          ),
          RepositoryProvider<HealthService>(
            create: (context) => HealthServiceImpl(
              RepositoryProvider.of<FirebaseService>(context),
            )..requestAuthorization(),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode: ThemeMode.dark,
      theme: AppColors.theme.copyWith(
        appBarTheme: AppColors.theme.appBarTheme.copyWith(
          iconTheme: IconThemeData(
            color: Colors.white,
            size: AppColors.theme.appBarTheme.iconTheme?.size,
            opacity: AppColors.theme.appBarTheme.iconTheme?.opacity,
            shadows: AppColors.theme.appBarTheme.iconTheme?.shadows,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          elevation: 0,
          shape: CircleBorder(),
        ),
      ),
      darkTheme: AppColors.darkTheme.copyWith(
        appBarTheme: AppColors.darkTheme.appBarTheme.copyWith(
          backgroundColor: AppColors.darkTheme.primaryColorDark,
        ),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const HomePage(),
    );
  }
}
