import 'package:chatapp_ui/domain/constants/app_themes.dart';
import 'package:chatapp_ui/domain/constants/cubits/theme_cubit.dart';
import 'package:chatapp_ui/domain/constants/cubits/theme_states.dart';
import 'package:chatapp_ui/repository/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
      builder: (context, states) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'A CHAT APP',
          theme: states is LightThemeStates ? AppThemes.lightTheme : AppThemes.darkTheme,
          home: OnboardingScreen(),
        );
      },
    );
  }
}
