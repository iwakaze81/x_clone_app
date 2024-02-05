import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppBottomNavigationBar extends ConsumerWidget {
  final void Function(int) onTap;
  final int currentIndex;

  const AppBottomNavigationBar({
    required this.onTap,
    required this.currentIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      selectedIconTheme: const IconThemeData(color: Colors.black),
      unselectedIconTheme: const IconThemeData(color: Colors.black),
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 0,
      unselectedFontSize: 0,
      items: _BottomNavigationBarItem.values.mapIndexed((index, item) {
        return BottomNavigationBarItem(
          icon: Icon(index == currentIndex ? item.activeIcon : item.icon),
          label: '',
        );
      }).toList(),
    );
  }
}

enum _BottomNavigationBarItem {
  home,
  search,
  group,
  notification,
  message;

  IconData get icon {
    return switch (this) {
      home => Icons.home_outlined,
      message => Icons.email_outlined,
      group => Icons.group_outlined,
      search => Icons.search_outlined,
      notification => Icons.notifications_outlined,
    };
  }

  IconData get activeIcon {
    return switch (this) {
      home => Icons.home,
      message => Icons.email,
      group => Icons.group,
      search => Icons.search,
      notification => Icons.notifications,
    };
  }
}
