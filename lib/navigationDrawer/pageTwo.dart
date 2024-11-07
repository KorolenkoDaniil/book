import 'package:flutter/material.dart';

import 'MyDrawerWidget.dart';

class pageTwo extends StatelessWidget {
  pageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page 2"),),
      body: const Center(
        child: Text("Page 2"),
      ),
      drawer: myDrawerWidget(),
    );
  }
}
