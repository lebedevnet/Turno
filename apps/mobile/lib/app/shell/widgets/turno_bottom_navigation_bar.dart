import 'package:flutter/material.dart';
import 'package:turno_mobile/app/shell/app_tab.dart';

class TurnoBottomNavigationBar extends StatelessWidget {
  const TurnoBottomNavigationBar({
    super.key,
    required this.currentTab,
    required this.onSelected,
  });

  final AppTab currentTab;
  final ValueChanged<AppTab> onSelected;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: currentTab.index,
      onDestinationSelected: (index) => onSelected(AppTab.values[index]),
      destinations: AppTab.values
          .map(
            (tab) => NavigationDestination(
              icon: Icon(tab.icon),
              selectedIcon: Icon(tab.selectedIcon),
              label: tab.label,
            ),
          )
          .toList(),
    );
  }
}
