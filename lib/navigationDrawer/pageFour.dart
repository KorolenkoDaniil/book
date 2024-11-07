import 'package:flutter/material.dart';

import 'MyDrawerWidget.dart';

class pageFour extends StatelessWidget {
  pageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 4"),),
      body: const Center(
        child: Text("Page 4"),
      ),
      drawer: myDrawerWidget(),
    );
  }
}
