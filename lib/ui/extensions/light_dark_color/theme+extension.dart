import 'package:flutter/material.dart' show Brightness, BuildContext, Theme;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme+extension.freezed.dart';

@freezed
class _ThemeColor with _$ThemeColor {
  const factory _ThemeColor.light() = _Light;
  const factory _ThemeColor.dark() = _Dark;
}

extension BuildContextExtension on BuildContext {
  _ThemeColor get color => Theme.of(this).brightness == Brightness.light
      ? const _ThemeColor.light()
      : const _ThemeColor.dark();
}
