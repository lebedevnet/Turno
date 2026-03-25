import 'package:flutter/material.dart';
import 'package:turno_mobile/app/app_shell.dart';
import 'package:turno_mobile/features/auth/auth_screen.dart';
import 'package:turno_mobile/features/match/match_screen.dart';
import 'package:turno_mobile/features/settings/settings_screen.dart';

class AppRouter {
  const AppRouter._();

  static const String home = '/';
  static const String auth = '/auth';
  static const String match = '/match';
  static const String settings = '/settings';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case auth:
        return MaterialPageRoute<void>(
          builder: (_) => const AuthScreen(),
          settings: settings,
        );
      case match:
        return MaterialPageRoute<void>(
          builder: (_) => const MatchScreen(),
          settings: settings,
        );
      case settings:
        return MaterialPageRoute<void>(
          builder: (_) => const SettingsScreen(),
          settings: settings,
        );
      case home:
      default:
        return MaterialPageRoute<void>(
          builder: (_) => const AppShell(),
          settings: settings,
        );
    }
  }
}
