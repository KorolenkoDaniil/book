import 'package:flutter/material.dart';
import 'package:korcourses/ImperativeNavigation/Navigation.dart';

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
      ),
      home: myDrawerWidget()

        // Scaffold(
        //   body: Navigation(),
        // ),
    );
  }
}
