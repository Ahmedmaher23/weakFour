import 'package:flutter/material.dart';

import 'Screens/GridViewScreen.dart';
import 'Screens/ListViewScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  TabController? myController;
  int _currentIndex = 0;
  List myWidgetList = [ListViewScreen(),  GridViewScreen()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(_currentIndex==0?"ListView":"GridView",
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16 * 2),
            bottomRight: Radius.circular(16 * 2),
          ),
        ),
        backgroundColor: const Color(0xff40596B),
      ),
      body: myWidgetList[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 26),
          selectedFontSize: 14,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffefd3d7),
          backgroundColor: const Color(0xff40596B),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List View"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_sharp), label: "GridView"),
          ],
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
