import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/bottom_navigation_provider.dart';
import 'home_page.dart';
import 'map_page.dart';
import 'user_page.dart';

class RootPage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavigationProvider(),
      child: Consumer<BottomNavigationProvider>(
        builder: (context, nav, child) {
          return Scaffold(
            body: _pageList[nav.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: _tabList,
              currentIndex: nav.currentIndex,
              onTap: (index) {
                nav.currentIndex = index;
              },
            ),
          );
        },
      ),
    );
  }
}
