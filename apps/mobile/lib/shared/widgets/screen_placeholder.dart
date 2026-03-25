import 'package:flutter/material.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';
import 'package:turno_mobile/shared/widgets/content_panel.dart';
import 'package:turno_mobile/shared/widgets/section_header.dart';

class ScreenPlaceholder extends StatelessWidget {
  const ScreenPlaceholder({
    super.key,
    required this.title,
    required this.description,
    required this.highlights,
    this.eyebrow = 'Coming Next',
    this.actionLabel,
    this.onAction,
  });

  final String eyebrow;
  final String title;
  final String description;
  final List<String> highlights;
  final String? actionLabel;
  final VoidCallback? onAction;

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
              eyebrow.toUpperCase(),
              style: theme.textTheme.labelLarge?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: AppSpacing.small),
            Text(
              title,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: AppSpacing.small),
            Text(
              description,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.72),
                height: 1.45,
              ),
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: AppSpacing.large),
              OutlinedButton(
                onPressed: onAction,
                child: Text(actionLabel!),
              ),
            ],
            const SizedBox(height: AppSpacing.xLarge),
            const SectionHeader(
              title: 'Planned for this area',
              subtitle:
                  'A placeholder surface to keep navigation and feature ownership clear while the product grows.',
            ),
            const SizedBox(height: AppSpacing.medium),
            ContentPanel(
              child: Column(
                children: [
                  for (var index = 0; index < highlights.length; index++) ...[
                    _PlaceholderListItem(text: highlights[index]),
                    if (index != highlights.length - 1)
                      const SizedBox(height: AppSpacing.medium),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlaceholderListItem extends StatelessWidget {
  const _PlaceholderListItem({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: AppSpacing.xxSmall),
          child: Icon(
            Icons.check_circle_outline_rounded,
            size: 18,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(width: AppSpacing.small),
        Expanded(
          child: Text(
            text,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(0.78),
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
