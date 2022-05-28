import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';

class AppColors {
  // static Color get primary => const Color(0xFFF05E21);
  static Color get primary => _theme.primaryColor;
  static Color get primaryDark => _darkTheme.primaryColor;

  static late ThemeData _theme;
  static late ThemeData _darkTheme;

  static ThemeData get theme => _theme;
  static ThemeData get darkTheme => _darkTheme;
  // ThemeData(
  //       fontFamily: 'Nunito',
  //       colorScheme: ColorScheme.fromSwatch(
  //         accentColor: primary,
  //         primaryColorDark: primaryDark,
  //         backgroundColor: Colors.white,
  //         primarySwatch: MaterialColor(
  //           primary.value,
  //           const {
  //             50: -0.12,
  //             100: -0.3,
  //             200: -0.5,
  //             300: -0.7,
  //             400: -0.8,
  //             500: 1.0,
  //             600: 0.9,
  //             700: 0.76,
  //             800: 0.64,
  //             900: 0.41,
  //           }.map(
  //             (key, value) => MapEntry(
  //               key,
  //               Color.fromRGBO(
  //                 _lightenOrDarkenComponent(primary.red, value),
  //                 _lightenOrDarkenComponent(primary.green, value),
  //                 _lightenOrDarkenComponent(primary.blue, value),
  //                 1,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     );

  static int _lightenOrDarkenComponent(int x, double brightness) {
    return (brightness.isNegative
            ? brightness * (255 - x) + 255
            : brightness * x)
        .round();
  }

  static Future<void> getTheme() async {
    final themeStr =
        await rootBundle.loadString('assets/theme/theme_light.json');
    final themeJson = jsonDecode(themeStr) as Map<String, dynamic>;
    final themeDarkStr =
        await rootBundle.loadString('assets/theme/theme_dark.json');
    final themeDarkJson = jsonDecode(themeDarkStr) as Map<String, dynamic>;
    // ignore: cascade_invocations
    themeJson.update(
      'fontFamily',
      (dynamic value) => 'Nunito',
      ifAbsent: () => 'Nunito',
    );
    themeDarkJson.update(
      'fontFamily',
      (dynamic value) => 'Nunito',
      ifAbsent: () => 'Nunito',
    );
    _theme = ThemeDecoder.decodeThemeData(themeJson)!;
    _darkTheme = ThemeDecoder.decodeThemeData(themeDarkJson)!;
  }
}
