
import 'package:flutter/material.dart';

import 'core_theme.dart';

enum AppTheme {
  LightAppTheme,
  DarkAppTheme,
}
final appThemeData = {
  AppTheme.DarkAppTheme: themeLight,
  AppTheme.LightAppTheme: themeDark
};