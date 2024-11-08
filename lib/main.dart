import 'package:flutter/material.dart';
import 'package:korcourses/ImperativeNavigation/Navigation.dart';
import 'package:korcourses/tabBar/tapBar.dart';

import 'bottomNavigationBar/bottomNavigationBar.dart';
import 'classCreation/ReadingClassData.dart';
import 'navigationDrawer/MyDrawerWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korcourses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.white,
          labelStyle: TextStyle(color: Colors.grey)
        )
      ),
      home:
        // Navigation(),
        // myDrawerWidget()
        // tapBar()
        // BottomNavigationBarExample()
        ReadingClassData()
    );
  }
}
