import 'package:flutter/material.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenPlaceholder(
      eyebrow: 'Auth',
      title: 'Authentication Placeholder',
      description:
          'Future sign-in, onboarding, and account recovery flows will live here once backend and session work begins.',
      highlights: [
        'Email, social sign-in, and guest entry points',
        'Profile setup and onboarding checkpoints',
        'Session handling and account recovery screens',
      ],
    );
  }
}
