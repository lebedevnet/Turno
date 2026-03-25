import 'package:flutter/material.dart';
import 'package:turno_mobile/app/routing/app_routes.dart';
import 'package:turno_mobile/shared/widgets/screen_placeholder.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenPlaceholder(
      eyebrow: 'Social',
      title: 'Social Hub',
      description:
          'Friends, invites, and table presence can grow here without crowding the core gameplay paths.',
      highlights: const [
        'Friends list, invites, and recent teammates',
        'Private table requests and shared match history',
        'Social presence states without adding visual noise',
      ],
      actionLabel: 'View Auth Placeholder',
      onAction: () => Navigator.of(context).pushNamed(AppRoutes.auth),
    );
  }
}
