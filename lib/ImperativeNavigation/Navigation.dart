import 'package:flutter/material.dart';
import 'package:korcourses/ImperativeNavigation/Details.dart';

class Navigation extends StatelessWidget {
  Navigation({Key? key}) : super(key: key);

  final List<String> items = [
    'январь',
    'февраль',
    'март',
    'апрель',
    'май',
    'июнь',
    'июль',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return MyListView(items[index]);
      },
    );
  }
}

class MyListView extends StatelessWidget {
  final String title;

  MyListView(this.title);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(title)
              )
          );
      },
    );
  }
}
