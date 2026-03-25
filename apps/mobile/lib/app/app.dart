import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_router.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/app/theme/app_theme.dart';

class TurnoApp extends StatelessWidget {
  const TurnoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turno',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.shell,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
