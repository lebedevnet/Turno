import 'package:flutter/material.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';
import 'package:turno_mobile/shared/widgets/content_panel.dart';

class FeaturedGameTile extends StatelessWidget {
  const FeaturedGameTile({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 172,
      child: ContentPanel(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 24,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: AppSpacing.large),
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: AppSpacing.xSmall),
            Text(
              description,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.72),
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
