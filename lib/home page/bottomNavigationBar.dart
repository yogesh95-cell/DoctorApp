import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:untitled4/home%20page/doctorPage.dart';
import 'package:untitled4/home%20page/gridViewPage.dart';
import 'package:untitled4/home%20page/hospitalPage.dart';
import 'package:untitled4/product%20list/gridViewData.dart';
class PracticeNavigationBar extends StatefulWidget {
  const PracticeNavigationBar({super.key});

  @override
  State<PracticeNavigationBar> createState() => _PracticeNavigationBarState();
}

class _PracticeNavigationBarState extends State<PracticeNavigationBar> {
  List list=[
    Doctor(),
    AboutDoctor(doctorsModel: allDetail[0]),
    Hospital_Page(),
  ];
  List<Icon>allitems =[
    Icon(Icons.home),
    Icon(Icons.category),
    Icon(Icons.category)
  ];

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        // selectedItemColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        index: _currentIndex,
        onTap: (int index){
          _currentIndex = index;
          setState(() {

          });
        },
        items: allitems,
      ),
    );
  }
}
