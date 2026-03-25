import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/app/shell/app_shell.dart';
import 'package:turno_mobile/features/auth/presentation/screens/auth_screen.dart';
import 'package:turno_mobile/features/match/presentation/screens/match_screen.dart';
import 'package:turno_mobile/features/settings/presentation/screens/settings_screen.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.auth:
        return MaterialPageRoute<void>(
          builder: (_) => const AuthScreen(),
          settings: settings,
        );
      case AppRoutes.match:
        return MaterialPageRoute<void>(
          builder: (_) => const MatchScreen(),
          settings: settings,
        );
      case AppRoutes.settings:
        return MaterialPageRoute<void>(
          builder: (_) => const SettingsScreen(),
          settings: settings,
        );
      case AppRoutes.shell:
      default:
        return MaterialPageRoute<void>(
          builder: (_) => const AppShell(),
          settings: settings,
        );
    }
  }
}
