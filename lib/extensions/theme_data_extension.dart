import 'package:flutter/material.dart';
import 'package:fm_flutter_mobile/extensions/custom_text_theme.dart';
import 'package:fm_flutter_mobile/extensions/custom_color_scheme.dart';

extension ThemeDataExtension on ThemeData {
  static CustomColorScheme _colorScheme = const CustomColorScheme.light();
  static CustomTextTheme _textTheme = CustomTextTheme.light();

  static Brightness? _colorSchemeBrightness;
  static Brightness? _textThemeBrightness;

  CustomColorScheme get colors {
    if (_colorSchemeBrightness != null &&
        _colorSchemeBrightness == brightness) {
      return _colorScheme;
    } else {
      _colorSchemeBrightness = brightness;
      _colorScheme = brightness == Brightness.light
          ? const CustomColorScheme.light()
          : const CustomColorScheme.dark();
      return _colorScheme;
    }
  }

  CustomTextTheme get textStyles {
    if (_textThemeBrightness != null && _textThemeBrightness == brightness) {
      return _textTheme;
    } else {
      _textThemeBrightness = brightness;
      _textTheme = brightness == Brightness.light
          ? CustomTextTheme.light()
          : CustomTextTheme.dark();
      return _textTheme;
    }
  }
}
