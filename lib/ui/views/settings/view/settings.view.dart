import 'package:calorie_tracker/ui/views/add_food/view/add_food.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            SettingsTile(
              title: 'Sign out',
              iosChevron: const Icon(Icons.chevron_right),
              leading: const Icon(Icons.exit_to_app),
              onPressed: (context) {},
            ),
          ],
        ),
        SettingsSection(
          title: 'General',
          titleTextStyle: Theme.of(context).textTheme.subtitle1,
          tiles: [
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
      ],
    );
  }
}