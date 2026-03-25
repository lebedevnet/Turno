import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenPlaceholder(
      eyebrow: 'Games',
      title: 'Games Library',
      description:
          'Browse the classic lineup, future game detail pages, and table entry flows from one focused surface.',
      highlights: const [
        'Catalog surfaces for Durak, Chess, and Poker',
        'Featured game details, rules, and future filters',
        'Launch points for quick match and private tables',
      ],
      actionLabel: 'Open Match Placeholder',
      onAction: () => Navigator.of(context).pushNamed(AppRoutes.match),
    );
  }
}
