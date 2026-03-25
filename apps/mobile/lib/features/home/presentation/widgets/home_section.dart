import 'package:flutter/material.dart';
import 'package:turno_mobile/core/design/app_tokens.dart';
import 'package:turno_mobile/shared/widgets/section_header.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
  });

  final String title;
  final String subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: title,
          subtitle: subtitle,
        ),
        const SizedBox(height: AppSpacing.medium),
        child,
      ],
    );
  }
}
