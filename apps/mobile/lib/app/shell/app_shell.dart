import 'package:flutter/material.dart';
import 'package:turno_mobile/app/shell/app_tab.dart';
import 'package:turno_mobile/app/shell/widgets/turno_bottom_navigation_bar.dart';
import 'package:turno_mobile/features/games/presentation/screens/games_screen.dart';
import 'package:turno_mobile/features/home/presentation/screens/home_screen.dart';
import 'package:turno_mobile/features/profile/presentation/screens/profile_screen.dart';
import 'package:turno_mobile/features/social/presentation/screens/social_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  static const List<Widget> _screens = [
    HomeScreen(),
    GamesScreen(),
    SocialScreen(),
    ProfileScreen(),
  ];

  AppTab _currentTab = AppTab.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab.index,
        children: _screens,
      ),
      bottomNavigationBar: TurnoBottomNavigationBar(
        currentTab: _currentTab,
        onSelected: (tab) {
          if (tab == _currentTab) {
            return;
          }

          setState(() {
            _currentTab = tab;
          });
        },
      ),
    );
  }
}
