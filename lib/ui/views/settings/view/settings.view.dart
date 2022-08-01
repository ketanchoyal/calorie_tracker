import 'package:calorie_tracker/core/services/health/health_service.dart';
import 'package:calorie_tracker/ui/blocs/auth/auth_bloc.dart';
import 'package:calorie_tracker/ui/views/add_food/view/add_food.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Settings'),
      ),
      body: const _SettingsBody(),
    );
  }
}

class _SettingsBody extends StatelessWidget {
  const _SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return SettingsList(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          sections: [
            SettingsSection(
              title: 'Account',
              titleTextStyle: Theme.of(context).textTheme.subtitle1,
              tiles: [
                SettingsTile(
                  title: 'Add Food',
                  leading: const Icon(Icons.add),
                  iosChevron: const Icon(Icons.chevron_right),
                  onPressed: (context) {
                    Navigator.push(
                      context,
                      CupertinoPageRoute<void>(
                        builder: (context) => const AddFoodView(),
                      ),
                    );
                  },
                ),
                state.maybeWhen(
                  orElse: () => SettingsTile(
                    title:
                        kReleaseMode ? 'Google Sign In' : 'Log In Anonymously',
                    iosChevron: const Icon(Icons.chevron_right),
                    leading: const Icon(Icons.exit_to_app),
                    onPressed: (context) {
                      if (kReleaseMode) {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.logInWithGoogle());
                      } else {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.logInAnonymously());
                      }
                    },
                  ),
                  logedIn: () => SettingsTile(
                    title: 'Sign out',
                    iosChevron: const Icon(Icons.chevron_right),
                    leading: const Icon(Icons.exit_to_app),
                    onPressed: (context) {
                      context.read<AuthBloc>().add(const AuthEvent.logOut());
                    },
                  ),
                ),
              ],
            ),
            SettingsSection(
              title: 'General',
              titleTextStyle: Theme.of(context).textTheme.subtitle1,
              tiles: [
                SettingsTile(
                  title: 'Request HealthKit Access',
                  iosChevron: const Icon(Icons.chevron_right),
                  leading: const Icon(Icons.health_and_safety_rounded),
                  onPressed: (context) {
                    RepositoryProvider.of<HealthService>(context)
                        .requestAuthorization();
                  },
                ),
                SettingsTile.switchTile(
                  title: 'Theme',
                  subtitle: Theme.of(context).brightness == Brightness.light
                      ? 'Light'
                      : 'Dark',
                  switchValue: Theme.of(context).brightness == Brightness.light,
                  leading: const Icon(Icons.wb_sunny),
                  onToggle: (value) {},
                ),
              ],
            ),
            SettingsSection(
              title: 'Developer Section',
              titleTextStyle: Theme.of(context).textTheme.subtitle1,
              tiles: [
                SettingsTile(
                  title: 'App Mode',
                  iosChevron: null,
                  leading: const Icon(Icons.logo_dev_rounded),
                  subtitle: kReleaseMode ? 'Release' : 'Debug',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
