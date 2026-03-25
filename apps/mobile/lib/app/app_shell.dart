import 'package:flutter/material.dart';
import 'package:turno_mobile/features/games/games_screen.dart';
import 'package:turno_mobile/features/home/home_screen.dart';
import 'package:turno_mobile/features/profile/profile_screen.dart';
import 'package:turno_mobile/features/social/social_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  static const List<_NavigationItem> _tabs = [
    _NavigationItem(
      label: 'Home',
      icon: Icons.home_outlined,
      selectedIcon: Icons.home_rounded,
      screen: HomeScreen(),
    ),
    _NavigationItem(
      label: 'Games',
      icon: Icons.sports_esports_outlined,
      selectedIcon: Icons.sports_esports_rounded,
      screen: GamesScreen(),
    ),
    _NavigationItem(
      label: 'Social',
      icon: Icons.people_outline_rounded,
      selectedIcon: Icons.people_rounded,
      screen: SocialScreen(),
    ),
    _NavigationItem(
      label: 'Profile',
      icon: Icons.person_outline_rounded,
      selectedIcon: Icons.person_rounded,
      screen: ProfileScreen(),
    ),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _tabs.map((tab) => tab.screen).toList(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          if (index == _currentIndex) {
            return;
          }

          setState(() {
            _currentIndex = index;
          });
        },
        destinations: _tabs
            .map(
              (tab) => NavigationDestination(
                icon: Icon(tab.icon),
                selectedIcon: Icon(tab.selectedIcon),
                label: tab.label,
              ),
            )
            .toList(),
      ),
    );
  }
}

class _NavigationItem {
  const _NavigationItem({
    required this.label,
    required this.icon,
    required this.selectedIcon,
    required this.screen,
  });

  final String label;
  final IconData icon;
  final IconData selectedIcon;
  final Widget screen;
}
