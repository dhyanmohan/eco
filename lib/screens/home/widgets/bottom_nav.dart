import 'package:eco/screens/home/homepage.dart';
import 'package:flutter/material.dart';

class bottomNav extends StatelessWidget {
  const bottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Homepage.selectedIndexNotifier,
      builder: (BuildContext ctx, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            Homepage.selectedIndexNotifier.value = newIndex;
          },
          unselectedItemColor: Colors.white,
          selectedItemColor: Color.fromARGB(255, 93, 199, 7),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.recycling),
              label: 'recycle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.support), label: 'donate')
          ],
        );
      },
    );
  }
}
