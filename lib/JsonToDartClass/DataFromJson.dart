class Month {
  List<Data>? data;

  Month({this.data});

  Month.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? title;

  Data({this.title});

  Data.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}



//
// Давай разбяром классы Month і Data і паглядзім, як яны працуюць з JSON. Клас Month змяшчае спіс аб'ектаў класа Data, які ў сваю чаргу ўтрымлівае толькі адно поле — title. Гэтая структура дазваляе працаваць з JSON, які мае масіў даных з загалоўкамі.
//
// Клас Month
// dart
// Копировать код
// class Month {
//   List<Data>? data;
//   List<Data>? data; — абвяшчэнне спісу data, які змяшчае элементы тыпу Data. ? азначае, што data можа быць null.
//   dart
//   Копировать код
//   Month({this.data});
//   Month({this.data}); — канструктар з пазначаным параметрам data. Гэта дазваляе ствараць аб'ект Month, перадаючы data падчас ініцыялізацыі.
//   dart
//   Копировать код
//   Month.fromJson(Map<String, dynamic> json){
//     if (json['data'] != null){
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }
//   Month.fromJson(Map<String, dynamic> json) — канструктар, які стварае аб'ект Month з JSON.
//   if (json['data'] != null) — правярае, ці прысутнічае data у JSON.
//   data = <Data>[]; — ініцыялізуе пусты спіс, каб дадаць элементы.
//   json['data'].forEach((v) { ... }); — праходзіць па кожным элементу ў data з JSON.
//   data!.add(new Data.fromJson(v)); — дадае ў спіс кожны элемент, канвертаваны ў Data з JSON.
//   dart
//   Копировать код
//   Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   if (this.data != null){
//   data['data'] = this.data!.map((v) => v.toJson()).toList();
//   }
//   return data;
//   }
// }
// toJson() — функцыя для канвертавання аб'екта Month назад у JSON-фармат.
// final Map<String, dynamic> data = new Map<String, dynamic>(); — стварае пустую карту для захоўвання дадзеных.
// data['data'] = this.data!.map((v) => v.toJson()).toList(); — канвертуе спіс data ў JSON-спіс.
// return data; — вяртае карту, прадстаўляючы аб'ект Month у JSON-фармаце.
// Клас Data
// dart
// Копировать код
// class Data {
// String? title;
// String? title; — абвяшчэнне поля title, якое можа быць null.
// dart
// Копировать код
// Data({this.title});
// Data({this.title}); — канструктар з пазначаным параметрам title.
// dart
// Копировать код
// Data.fromJson(Map<String, dynamic> json) {
// title = json['title'];
// }
// Data.fromJson(Map<String, dynamic> json) — канструктар, які стварае аб'ект Data з JSON.
// title = json['title']; — прысвойвае значэнне title з JSON, калі яно існуе.
// dart
// Копировать код
// Map<String, dynamic> toJson() {
// final Map<String, dynamic> data = new Map<String, dynamic>();
// data['title'] = this.title;
// return data;
// }
// }
// toJson() — функцыя для канвертавання аб'екта Data назад у JSON-фармат.
// final Map<String, dynamic> data = new Map<String, dynamic>(); — стварае карту.
// data['title'] = this.title; — дадае title у карту.
// return data; — вяртае карту з аб'ектам Data у JSON-фармаце.
// Як працаваць з JSON у Dart
// Дэкадаванне JSON у аб'екты:
//
// Калі ў цябе ёсць JSON-структура, можаш перадаць яе ў Month.fromJson(json) для стварэння аб'екта Month.
// dart
// Копировать код
// Map<String, dynamic> jsonData = {"data": [{"title": "Example Title"}]};
// Month month = Month.fromJson(jsonData);
// Кадаванне аб'ектаў у JSON:
//
// Каб канвертаваць аб'ект назад у JSON, выкарыстоўвай toJson().
// dart
// Копировать код
// Map<String, dynamic> json = month.toJson();
// Гэта дазваляе лёгка пераходзіць паміж Dart-аб'ектамі і JSON.
