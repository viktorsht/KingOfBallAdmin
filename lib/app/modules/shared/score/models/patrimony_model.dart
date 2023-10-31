class PatrimonyModel {
  int? id;
  String? score;
  int? teamGameEditionId;
  int? championshipRoundId;
  String? createdAt;
  String? updatedAt;

  PatrimonyModel(
      {this.id,
      this.score,
      this.teamGameEditionId,
      this.championshipRoundId,
      this.createdAt,
      this.updatedAt});

  PatrimonyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    score = json['score'];
    teamGameEditionId = json['team_game_edition_id'];
    championshipRoundId = json['championship_round_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['score'] = score;
    data['team_game_edition_id'] = teamGameEditionId;
    data['championship_round_id'] = championshipRoundId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
