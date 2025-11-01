import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week6_assignment/core/theme/app_color.dart';

class LightTheme {
  LightTheme._();

  // Border Radius Constants
  static const double _borderRadius = 12.0;
  static const double _focusedBorderWidth = 1.5;

  // Padding Constants
  static const EdgeInsets _contentPadding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 16,
  );

  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: _colorScheme,
    appBarTheme: _appBar,
    inputDecorationTheme: _inputDecoration,
    iconTheme: _iconTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    textButtonTheme: _textButtonTheme,
  );

  /// Text Button Theme
  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColor.primaryColor),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    );
  }

  static IconThemeData get _iconTheme {
    return const IconThemeData(color: AppColor.lightOnSurfaceColor, size: 24);
  }

  static InputDecorationTheme get _inputDecoration {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColor.lightSurfaceColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
        borderSide: const BorderSide(
          color: AppColor.focusedBorderColor,
          width: _focusedBorderWidth,
        ),
      ),
      contentPadding: _contentPadding,
    );
  }

  static AppBarTheme get _appBar {
    return const AppBarTheme(
      backgroundColor: AppColor.lightSurfaceColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(color: AppColor.lightOnSurfaceColor),
    );
  }

  static ColorScheme get _colorScheme {
    return ColorScheme.light(
      primary: AppColor.primaryColor,
      surface: AppColor.lightSurfaceColor,
      onSecondary: AppColor.lightSurfaceColor,
      onSurface: AppColor.lightOnSurfaceColor,
      surfaceContainerHigh: AppColor.lightSurfaceContainerHighColor,
    );
  }
}
