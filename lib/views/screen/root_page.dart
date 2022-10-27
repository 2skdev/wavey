import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'home_page.dart';
import 'map_page.dart';
import 'user_page.dart';

import '../../provider/bottom_navigation_provider.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  List<Widget> get _pageList => <Widget>[
        const HomePage(),
        const MapPage(),
        const UserPage(),
      ];

  List<BottomNavigationBarItem> get _tabList => <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label: '',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: '',
        ),
      ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nav = ref.watch(bottomNavigationStateProvider);

    return Scaffold(
      body: _pageList[nav],
      bottomNavigationBar: BottomNavigationBar(
        items: _tabList,
        currentIndex: nav,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) =>
            ref.read(bottomNavigationStateProvider.notifier).state = index,
      ),
    );
  }
}
