import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenPlaceholder(
      eyebrow: 'Profile',
      title: 'Player Profile',
      description:
          'Stats, preferences, and account details will live here in a simple profile surface that stays close to the core app shell.',
      highlights: const [
        'Player identity, stats, and future progression',
        'Saved preferences for theme, notifications, and accessibility',
        'A clear handoff into settings and account management',
      ],
      actionLabel: 'Open Settings',
      onAction: () => Navigator.of(context).pushNamed(AppRoutes.settings),
    );
  }
}
