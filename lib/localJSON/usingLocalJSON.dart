import 'package:flutter/material.dart';
import 'dart:convert';

class DataItem {
  final String title;

  DataItem({required this.title});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(title: json['title']);
  }
}

class MyData {
  final String items = '{"data": [ '
      '{"title": "January"},'
      '{"title": "February"},'
      '{"title": "March"} '
      ']}';
}

class DataSeries {
  final List<DataItem> dataModel;

  DataSeries({required this.dataModel});

  factory DataSeries.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<DataItem> dataList =
        list.map((dataItem) => DataItem.fromJson(dataItem)).toList();
    return DataSeries(dataModel: dataList);
  }
}

class LocalJson extends StatefulWidget {
  const LocalJson({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  late Future<DataSeries> dataSeries;

  Future<String> _loadDataAsset() async {
    return await DefaultAssetBundle.of(context)
        .loadString('assets/example2.json');
  }

  Future<DataSeries> fetchData() async {
    String jsonString = await _loadDataAsset();
    final jsonResponse = json.decode(jsonString);
    return DataSeries.fromJson(jsonResponse);
  }

  @override
  void initState() {
    super.initState();
    dataSeries = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: FutureBuilder<DataSeries>(
            future: dataSeries,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.dataModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data!.dataModel[index].title),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              }
              return const CircularProgressIndicator();
            }));
  }
}
