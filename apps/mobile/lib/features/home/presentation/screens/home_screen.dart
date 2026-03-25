import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';
import 'package:turno_mobile/features/home/presentation/widgets/featured_game_tile.dart';
import 'package:turno_mobile/features/home/presentation/widgets/home_section.dart';
import 'package:turno_mobile/shared/widgets/content_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: SingleChildScrollView(
        padding: kPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Turno',
              style: theme.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: AppSpacing.small),
            Text(
              'Pick up an active table, start a quick match, or invite friends into a calmer multiplayer hub.',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.72),
                height: 1.45,
              ),
            ),
            const SizedBox(height: AppSpacing.xLarge),
            HomeSection(
              title: 'Continue Playing',
              subtitle: 'Resume your latest table in one tap.',
              child: ContentPanel(
                tinted: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const _GameBadge(label: 'Durak'),
                        const Spacer(),
                        Text(
                          'Active table',
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.colorScheme.onSurface.withOpacity(0.64),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSpacing.medium),
                    Text(
                      'Evening Table',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.xSmall),
                    Text(
                      'Your turn against Alex and Maya. Placeholder match flow for now.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(0.74),
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.large),
                    FilledButton(
                      onPressed: () => Navigator.of(context).pushNamed(
                        AppRoutes.match,
                      ),
                      child: const Text('Resume Placeholder'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xLarge),
            HomeSection(
              title: 'Quick Match',
              subtitle: 'Keep the path from launch to table short.',
              child: ContentPanel(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'These actions are placeholder entry points for future matchmaking and game setup flows.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withOpacity(0.74),
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: AppSpacing.large),
                    Wrap(
                      spacing: AppSpacing.small,
                      runSpacing: AppSpacing.small,
                      children: [
                        FilledButton.tonal(
                          onPressed: () => Navigator.of(context).pushNamed(
                            AppRoutes.match,
                          ),
                          child: const Text('Durak'),
                        ),
                        FilledButton.tonal(
                          onPressed: () => Navigator.of(context).pushNamed(
                            AppRoutes.match,
                          ),
                          child: const Text('Chess'),
                        ),
                        FilledButton.tonal(
                          onPressed: () => Navigator.of(context).pushNamed(
                            AppRoutes.match,
                          ),
                          child: const Text('Poker'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xLarge),
            HomeSection(
              title: 'Play with Friends',
              subtitle: 'Private tables and invites will expand from here.',
              child: ContentPanel(
                child: Column(
                  children: const [
                    _HomeActionRow(
                      icon: Icons.group_add_outlined,
                      title: 'Create a private table',
                      subtitle:
                          'Start a calmer match flow for invited friends.',
                    ),
                    SizedBox(height: AppSpacing.medium),
                    Divider(height: 1),
                    SizedBox(height: AppSpacing.medium),
                    _HomeActionRow(
                      icon: Icons.chat_bubble_outline_rounded,
                      title: 'Share an invite',
                      subtitle:
                          'Social and invite systems will connect here later.',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.xLarge),
            HomeSection(
              title: 'Featured Games',
              subtitle: 'A simple spotlight for the first classic lineup.',
              child: SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FeaturedGameTile(
                      title: 'Durak',
                      description: 'Fast rounds and friendly table pressure.',
                      icon: Icons.style_outlined,
                    ),
                    SizedBox(width: AppSpacing.medium),
                    FeaturedGameTile(
                      title: 'Chess',
                      description: 'Focused one-on-one play with room to think.',
                      icon: Icons.extension_outlined,
                    ),
                    SizedBox(width: AppSpacing.medium),
                    FeaturedGameTile(
                      title: 'Poker',
                      description: 'Classic table energy with a quieter shell.',
                      icon: Icons.casino_outlined,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GameBadge extends StatelessWidget {
  const _GameBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.small,
        vertical: AppSpacing.xSmall,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.10),
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _HomeActionRow extends StatelessWidget {
  const _HomeActionRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.08),
            borderRadius: BorderRadius.circular(AppRadius.medium),
          ),
          alignment: Alignment.center,
          child: Icon(
            icon,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(width: AppSpacing.medium),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: AppSpacing.xSmall),
              Text(
                subtitle,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.72),
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
