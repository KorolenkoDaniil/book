import 'package:flutter/material.dart';
import 'package:korcourses/navigationDrawer/pageFour.dart';
import 'package:korcourses/navigationDrawer/pageThree.dart';
import 'package:korcourses/navigationDrawer/pageTwo.dart';

class myDrawerWidget extends StatelessWidget {
  myDrawerWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(child: Icon(Icons.home, size: 35),),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("itemmm 1"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => myDrawerWidget()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("itemmm 2"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => pageTwo()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("itemmm 3"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => pageThree()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("itemmm 4"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => pageFour()),
              );
            },
          )
        ],
      ),
    );
  }
}
