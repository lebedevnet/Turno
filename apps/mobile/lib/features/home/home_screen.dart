import 'package:flutter/material.dart';
import 'package:turno_mobile/core/constants/app_spacing.dart';
import 'package:turno_mobile/shared/widgets/section_block.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: const [
          SectionBlock(
            title: 'Continue Playing',
            child: Text('Recent active tables and unfinished matches appear here.'),
          ),
          SizedBox(height: AppSpacing.lg),
          SectionBlock(
            title: 'Quick Match',
            child: Text('Fast entry points for Durak, Chess, and Poker.'),
          ),
          SizedBox(height: AppSpacing.lg),
          SectionBlock(
            title: 'Play with Friends',
            child: Text('Private tables, invites, and friend-based match flows.'),
          ),
          SizedBox(height: AppSpacing.lg),
          SectionBlock(
            title: 'Featured Games',
            child: Text('A simple spotlight area for the supported games.'),
          ),
        ],
      ),
    );
  }
}
