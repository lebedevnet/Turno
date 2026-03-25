import 'package:flutter/material.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';

class AppTheme {
  const AppTheme._();

  static const Color _seedColor = Color(0xFF315CE8);
  static const Color _lightBackground = Color(0xFFF5F7FB);
  static const Color _darkBackground = Color(0xFF0F1218);
  static const Color _lightSurface = Color(0xFFFFFFFF);
  static const Color _darkSurface = Color(0xFF171B22);

  static ThemeData light() => _buildTheme(Brightness.light);

  static ThemeData dark() => _buildTheme(Brightness.dark);

  static ThemeData _buildTheme(Brightness brightness) {
    final baseScheme = ColorScheme.fromSeed(
      seedColor: _seedColor,
      brightness: brightness,
    );
    final isDark = brightness == Brightness.dark;
    final colorScheme = baseScheme.copyWith(
      surface: isDark ? _darkSurface : _lightSurface,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: isDark ? _darkBackground : _lightBackground,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: colorScheme.onSurface,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
      ),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: isDark ? const Color(0xFF141821) : _lightSurface,
        elevation: 0,
        height: 72,
        indicatorColor: colorScheme.primary.withOpacity(isDark ? 0.28 : 0.14),
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, 48),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(0, 48),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.large,
            vertical: AppSpacing.small,
          ),
          side: BorderSide(
            color: colorScheme.onSurface.withOpacity(0.10),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
        ),
      ),
      dividerColor: colorScheme.onSurface.withOpacity(0.08),
      textTheme: ThemeData(
        useMaterial3: true,
        brightness: brightness,
        colorScheme: colorScheme,
      ).textTheme,
    );
  }
}
