import 'package:flutter/material.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';

class ContentPanel extends StatelessWidget {
  const ContentPanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.large),
    this.tinted = false,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool tinted;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final backgroundColor = tinted
        ? theme.colorScheme.primary.withOpacity(isDark ? 0.16 : 0.06)
        : theme.colorScheme.surface;
    final borderColor = theme.colorScheme.onSurface.withOpacity(
      isDark ? 0.12 : 0.06,
    );
    final radius = BorderRadius.circular(AppRadius.large);

    return Material(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: radius,
        side: BorderSide(color: borderColor),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        borderRadius: radius,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
