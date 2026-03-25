import 'package:flutter/material.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenPlaceholder(
      eyebrow: 'Settings',
      title: 'Settings Placeholder',
      description:
          'Display preferences, notifications, and account controls can land here once those systems are ready.',
      highlights: [
        'Theme, motion, and accessibility preferences',
        'Notification and privacy controls',
        'Account management and support entry points',
      ],
    );
  }
}
