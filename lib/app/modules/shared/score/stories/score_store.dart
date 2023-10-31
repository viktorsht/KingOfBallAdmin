import 'package:mobx/mobx.dart';

part 'score_store.g.dart';

class ScoreStore = ScoreStoreImpl with _$ScoreStore;

abstract class ScoreStoreImpl with Store {
  @observable
  double _score = 0.0;

  @observable
  double _scoreApi = 0.0; // Exemplo, começa com 100 da API

  @computed
  double get score => _score;

  @computed
  double get scoreApi => _scoreApi;

  @action
  void clearScore() => _score = 0;

  @computed
  double get calculateRest{
    double rest = _scoreApi - _score;
    return rest < 0 ? 0 : rest;
  } 

  @action
  void incrementScore(String value) {
    final newScore = double.tryParse(value) ?? 0.0; // Trata strings inválidas
    //final potentialScore = _score + newScore;
    //print("potemcialScore = $potentialScore   resto = $calculateRest  api = $_scoreApi");
    //if (potentialScore <= _scoreApi) {
    _score += newScore;
    //}
  }

  @action
  void decrementScore(String value) {
    final newScore = double.tryParse(value) ?? 0.0; // Trata strings inválidas

    if (_score >= newScore) {
      _score -= newScore;
    }
  }

  String getScoreAsString() {
    return _score.toStringAsFixed(2); // Formata para 2 casas decimais
  }

  String getRestAsString() {
    return calculateRest.toStringAsFixed(2); // Formata para 2 casas decimais
  }

  @action
  void setScore(String? newScore) {
    if (newScore != null) {
      final parsedScore = double.tryParse(newScore) ?? 0.0; // Trata strings inválidas
      _scoreApi = parsedScore;

      //if (parsedScore <= _scoreApi) {}
    }
  }
}
