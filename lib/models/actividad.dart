class ActividadModel {
  String? activity;
  String? type;
  int? participants;
  int? price;
  String? key;
  double? accessibility;

  ActividadModel({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.key,
    required this.accessibility,
  });

  factory ActividadModel.fromJson(Map<String, dynamic> json) => ActividadModel(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        key: json["key"],
        accessibility: json["accessibility"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "key": key,
        "accessibility": accessibility,
      };
}
