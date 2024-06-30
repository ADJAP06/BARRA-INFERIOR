import 'package:flutter/material.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_home.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_search.dart';
import 'package:flutter_application_barra_inferior/view/pantalla_users.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screens = [
      const PantallaHome(),
      const PantallaSearch(),
      const PantallaUsers()
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            activeIcon: const Icon(Icons.home),
            label: "Home",
            backgroundColor: colors.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.saved_search_sharp),
            activeIcon: const Icon(Icons.search),
            label: "Search",
            backgroundColor: colors.tertiary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            activeIcon: const Icon(Icons.supervised_user_circle_sharp),
            label: "Person",
            backgroundColor: colors.onPrimaryFixed,
          ),
        ],
      ),
    );
  }
}
