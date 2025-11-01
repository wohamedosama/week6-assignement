import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:week6_assignment/core/theme/app_color.dart';

class DarkTheme {
  DarkTheme._();

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
    brightness: Brightness.dark,
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
      style: TextButton.styleFrom(foregroundColor: AppColor.darkPrimaryColor),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.darkPrimaryColor,
        foregroundColor: Colors.black,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_borderRadius),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
    );
  }

  static IconThemeData get _iconTheme {
    return const IconThemeData(color: AppColor.darkOnSurfaceColor, size: 24);
  }

  static InputDecorationTheme get _inputDecoration {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColor.darkSurfaceContainerHighColor,
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
          color: AppColor.darkPrimaryColor,
          width: _focusedBorderWidth,
        ),
      ),
      contentPadding: _contentPadding,
    );
  }

  static AppBarTheme get _appBar {
    return const AppBarTheme(
      backgroundColor: AppColor.darkSurfaceColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: IconThemeData(color: AppColor.darkOnSurfaceColor),
    );
  }

  static ColorScheme get _colorScheme {
    return ColorScheme.dark(
      primary: AppColor.darkPrimaryColor,
      surface: AppColor.darkSurfaceColor,
      onSecondary: AppColor.darkOnSurfaceColor,
      onSurface: AppColor.darkOnSurfaceColor,
      surfaceContainerHigh: AppColor.darkSurfaceContainerHighColor,
    );
  }
}
