class ScoreModel {
  String? patrimony;

  ScoreModel({this.patrimony});

  ScoreModel.fromJson(Map<String, dynamic> json) {
    patrimony = json['patrimony'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['patrimony'] = patrimony;
    return data;
  }
}
