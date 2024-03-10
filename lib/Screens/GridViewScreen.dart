import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Center(
              child: Stack(
                children: [
                  Image.asset(
                    "Assets/store.png",
                    width: 300,
                  ),
                  const Positioned(
                      top: 70,
                      left: 45,
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
          }),
    );
  }
}
