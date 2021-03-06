import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:home_delivery_app/presentation/theme/theme_data.dart';
part '../state/state_theme.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState(isDarkThemeOn: false));
  void toggleSwitch(bool value) => emit(state.copyWith(changeState: value));
}