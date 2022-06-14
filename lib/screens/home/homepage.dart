import 'package:eco/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:eco/screens/home/widgets/bottom_nav.dart';
import 'package:eco/screens/donate/donate.dart';
import 'package:eco/screens/recycle/recycle.dart';
import 'package:eco/screens/home/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(1);

  final pages = [
    recycle(),
    home(),
    donate(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: DrawerMenu(),
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: (() => 0),
          //   icon: Icon(Icons.menu),
          //),
          title: Padding(
            padding: EdgeInsets.all(
              95,
            ),
            child: Image.asset(
              'assets/eco.png',
              height: 40,

              //alignment: Alignment.center,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        bottomNavigationBar: bottomNav(),
        body: SafeArea(
            child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, _) {
            return pages[updatedIndex];
          },
        )),
      ),
    );
  }
}
