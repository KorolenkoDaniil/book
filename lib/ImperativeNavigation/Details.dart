import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details (this.itemTitle);
  final String  itemTitle;

  @override
  Widget build(BuildContext context) {
    const title = "Details Page";
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: SafeArea(
          top: false,
          bottom: false,
          child:
          Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  SizedBox(
                    height: 338,
                    width: 800,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(itemTitle),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
      ),
    );
  }
}
