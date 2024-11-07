import 'package:flutter/material.dart';

import 'MyDrawerWidget.dart';

class navigationDrawer extends StatelessWidget {
  navigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 1"),),
      body: const Center(
        child: Text("Page 1"),
      ),
      drawer: myDrawerWidget(),
      // endDrawer: myDrawerWidget(), откроет с правой стороны
    );
  }
}
