import 'package:bloc_theme_changer/cubit/theme_cubit.dart';
import 'package:bloc_theme_changer/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeCubit _themeCubit = context.read<ThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Check',
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode,
        builder: (context, state) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRadioButton(
                onPressed: () => _themeCubit.setLightTheme(),
                isSelected: state.themeMode == ThemeMode.light,
                buttonText: 'Light Theme',
              ),
              CustomRadioButton(
                onPressed: () => _themeCubit.setDarkTheme(),
                isSelected: state.themeMode == ThemeMode.dark,
                buttonText: 'Dark Theme',
              ),
              CustomRadioButton(
                onPressed: () => _themeCubit.setSystemTheme(),
                isSelected: state.themeMode == ThemeMode.system,
                buttonText: 'System Theme',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
