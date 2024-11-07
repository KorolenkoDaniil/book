import 'package:flutter/material.dart';

import 'MyDrawerWidget.dart';

class pageThree extends StatelessWidget {
  pageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 3"),),
      body: const Center(
        child: Text("Page 3"),
      ),
      drawer: myDrawerWidget(),
    );
  }
}

