import 'package:flutter/material.dart';
import 'package:korcourses/classCreation/MyData.dart';

class ReadingClassData extends StatelessWidget {

ReadingClassData ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final MyData data = MyData();

    List items = data.items;

    return Scaffold(
      appBar: AppBar(title: const Text("Reading json"),),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          }
        )
    );
  }
}
