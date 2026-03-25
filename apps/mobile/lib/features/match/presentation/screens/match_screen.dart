import 'package:flutter/material.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenPlaceholder(
      eyebrow: 'Match',
      title: 'Match Placeholder',
      description:
          'Game setup, seat states, and live table presentation will grow here once actual gameplay systems are introduced.',
      highlights: [
        'Pre-match setup and game configuration',
        'Live table layout, turn state, and player slots',
        'Match status, reconnect flows, and future real-time hooks',
      ],
    );
  }
}
