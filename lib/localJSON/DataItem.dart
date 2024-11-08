class DataItem{
  final String title;
  DataItem ({required this.title});

  factory DataItem.fromJson(Map<String, dynamic> json){
    return DataItem(title: json["title"]);
  }
}