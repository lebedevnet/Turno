import 'package:flutter/material.dart';
import 'package:turno_mobile/core/constants/app_spacing.dart';
import 'package:turno_mobile/features/home/widgets/continue_playing_card.dart';
import 'package:turno_mobile/features/home/widgets/featured_game_card.dart';
import 'package:turno_mobile/features/home/widgets/home_header.dart';
import 'package:turno_mobile/shared/widgets/primary_button.dart';
import 'package:turno_mobile/shared/widgets/section_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          children: const [
            HomeHeader(),
            SizedBox(height: AppSpacing.lg),
            _QuickMatchSection(),
            SizedBox(height: AppSpacing.lg),
            _ContinuePlayingSection(),
            SizedBox(height: AppSpacing.lg),
            _PlayWithFriendsSection(),
            SizedBox(height: AppSpacing.lg),
            _FeaturedGamesSection(),
          ],
        ),
      ),
    );
  }
}

class _QuickMatchSection extends StatelessWidget {
  const _QuickMatchSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SectionBlock(
      title: 'Quick Match',
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withOpacity(0.4),
          ),
        ),
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Start a fresh table in one step.',
            ),
            const SizedBox(height: AppSpacing.md),
            PrimaryButton(
              label: 'Start Quick Match',
              icon: Icons.play_arrow_rounded,
              onPressed: _noop,
            ),
          ],
        ),
      ),
    );
  }
}

class _ContinuePlayingSection extends StatelessWidget {
  const _ContinuePlayingSection();

  @override
  Widget build(BuildContext context) {
    return SectionBlock(
      title: 'Continue Playing',
      actionLabel: 'See all',
      onAction: _noop,
      child: SizedBox(
        height: 164,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            ContinuePlayingCard(
              gameTitle: 'Durak',
              tableTitle: 'Evening Table',
              status: 'Your turn',
            ),
            SizedBox(width: AppSpacing.md),
            ContinuePlayingCard(
              gameTitle: 'Chess',
              tableTitle: 'Ranked Match',
              status: 'In progress',
            ),
            SizedBox(width: AppSpacing.md),
            ContinuePlayingCard(
              gameTitle: 'Poker',
              tableTitle: 'Friendly Table',
              status: 'Waiting',
            ),
          ],
        ),
      ),
    );
  }
}

class _PlayWithFriendsSection extends StatelessWidget {
  const _PlayWithFriendsSection();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SectionBlock(
      title: 'Play with Friends',
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: theme.colorScheme.outlineVariant.withOpacity(0.4),
          ),
        ),
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.08),
                borderRadius: BorderRadius.circular(16),
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.people_alt_outlined,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create a private table',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.xs),
                  Text(
                    'Invite friends into a shared match once social flows are connected.',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSurface.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSpacing.md),
            OutlinedButton(
              onPressed: _noop,
              child: const Text('Invite'),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeaturedGamesSection extends StatelessWidget {
  const _FeaturedGamesSection();

  @override
  Widget build(BuildContext context) {
    return SectionBlock(
      title: 'Featured Games',
      actionLabel: 'See all',
      onAction: _noop,
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacing.md,
        crossAxisSpacing: AppSpacing.md,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.25,
        children: const [
          FeaturedGameCard(
            title: 'Durak',
            subtitle: 'Fast table play',
            icon: Icons.style_outlined,
          ),
          FeaturedGameCard(
            title: 'Chess',
            subtitle: 'Classic 1v1',
            icon: Icons.extension_outlined,
          ),
          FeaturedGameCard(
            title: 'Poker',
            subtitle: 'Table strategy',
            icon: Icons.casino_outlined,
          ),
          FeaturedGameCard(
            title: 'More Soon',
            subtitle: 'Future classics',
            icon: Icons.grid_view_outlined,
          ),
        ],
      ),
    );
  }
}

void _noop() {}
