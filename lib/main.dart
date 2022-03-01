import 'package:bloc_theme_changer/constants/constants.dart';
import 'package:bloc_theme_changer/cubit/theme_cubit.dart';
import 'package:bloc_theme_changer/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) => previous.themeMode != current.themeMode,
        builder: (context, state) => MaterialApp(
          title: 'Bloc Theme',
          themeMode: state.themeMode,
          theme: light,
          darkTheme: dark,
          home: const SettingsScreen(),
        ),
      ),
    );
  }
}
