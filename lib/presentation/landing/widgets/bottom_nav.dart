import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavWidgets extends StatelessWidget {
  const BottomNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: (index) => indexChangeNotifier.value = index,
          currentIndex: newIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: const IconThemeData(
            color: Colors.grey,
          ),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_filter_sharp), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_rounded), label: 'My Netflix'),
          ],
        );
      },
    );
  }
}
