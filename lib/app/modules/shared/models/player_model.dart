import 'position_mode.dart';

class PlayerModel {
  int? id;
  String? firstName;
  String? lastName;
  int? number;
  int? positionId;
  int? cityId;
  String? createdAt;
  String? updatedAt;
  PositionModel? position;

  PlayerModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.number,
      this.positionId,
      this.cityId,
      this.createdAt,
      this.updatedAt,
      this.position});

  PlayerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    number = json['number'];
    positionId = json['position_id'];
    cityId = json['city_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    position = json['position'] != null
        ? PositionModel.fromJson(json['position'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['number'] = number;
    data['position_id'] = positionId;
    data['city_id'] = cityId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (position != null) {
      data['position'] = position!.toJson();
    }
    return data;
  }
}