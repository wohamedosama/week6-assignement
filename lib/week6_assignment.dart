import 'package:flutter/material.dart';
import 'package:week6_assignment/core/theme/dark_theme.dart';
import 'package:week6_assignment/core/theme/light_theme.dart';
import 'package:week6_assignment/feature/data/model/popular_model.dart';
import 'package:week6_assignment/feature/presentation/screen/home_screen.dart';

class Week6Assignment extends StatelessWidget {
  const Week6Assignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(popularModel: PopularModel()),
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,
    );
  }
}
