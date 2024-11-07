import 'package:flutter/material.dart';

class tapBar extends StatelessWidget {
  tapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home, color: Colors.white),
                    child: Text("Home"),
                  ),
                  Tab(
                    icon: Icon(Icons.account_balance, color: Colors.white),
                    child: Text("Account"),
                  ),
                  Tab(
                    icon: Icon(Icons.calculate, color: Colors.white),
                    child: Text("Payments"),
                  ),
                  Tab(
                    icon: Icon(Icons.credit_score, color: Colors.white),
                    child: Text("Card"),
                  ),
                ],
              ),
            ),
            body: const TabBarView(children: [
              SizedBox(
                child: Center(
                  child: Text("page 1"),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text("page 2"),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text("page 3"),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text("page 4"),
                ),
              ),
            ]),
          )),
    );
  }
}
