import 'package:flutter/material.dart';

final List<Widget> _navigationPages = [
  const Center(child: Text("Page: Home")),
  const Center(child: Text("Page: News")),
  const Center(child: Text("Page: Favorites")),
  const Center(child: Text("Page: List")),
];

class BottomNavigationBarExample extends StatefulWidget {
  BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  final appTitle = "Bottom Nav Bar";
  int _itemSelected = 0; // Правильное имя переменной

  void _bottomBarNavigation(int index) {
    setState(() {
      _itemSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: _navigationPages[_itemSelected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _itemSelected,
        onTap: _bottomBarNavigation, // Исправлено имя метода
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "News"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
        ],
      ),
    );
  }
}
