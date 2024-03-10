import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  ListViewScreen({super.key});

  String listView = "ListView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Center(
            child: Stack(
              children: [
                Image.asset(
                  "Assets/store.png",
                  width: 300,
                ),
                const Positioned(
                    bottom: 70,
                    right: 75,
                    child: Text(
                      "Shop",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFE74E3A),
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 5,
            thickness: 0,
          );
        },
      ),
      // bottomNavigationBar:  ClipRRect(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(30.0),
      //     topRight: Radius.circular(30.0),
      //   ),
      //   child: BottomNavigationBar(
      //     selectedIconTheme: const IconThemeData(size: 26),
      //     selectedFontSize: 14,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: const Color(0xffefd3d7),
      //     backgroundColor: const Color(0xff40596B),
      //     items: const [
      //       BottomNavigationBarItem(icon: Icon(Icons.list), label: "List View"),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.grid_view_sharp), label: "GridView"),
      //     ],
      //   ),
      // ),
    );
  }
}
