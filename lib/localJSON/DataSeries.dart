import 'DataItem.dart';

class DataSeries {
  final List<DataItem> dataModel;

  DataSeries ({required this.dataModel});

  factory DataSeries.fromJson(Map<String, dynamic> json){
    var list = json['data'] as List;
    List<DataItem> dataList = list.map((dataModel) => DataItem.fromJson(dataModel)).toList();
    return DataSeries(dataModel: dataList);
  }
}