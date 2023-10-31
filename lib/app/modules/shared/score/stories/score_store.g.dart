// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ScoreStore on ScoreStoreImpl, Store {
  Computed<double>? _$scoreComputed;

  @override
  double get score => (_$scoreComputed ??=
          Computed<double>(() => super.score, name: 'ScoreStoreImpl.score'))
      .value;
  Computed<double>? _$scoreApiComputed;

  @override
  double get scoreApi =>
      (_$scoreApiComputed ??= Computed<double>(() => super.scoreApi,
              name: 'ScoreStoreImpl.scoreApi'))
          .value;
  Computed<double>? _$calculateRestComputed;

  @override
  double get calculateRest =>
      (_$calculateRestComputed ??= Computed<double>(() => super.calculateRest,
              name: 'ScoreStoreImpl.calculateRest'))
          .value;

  late final _$_scoreAtom =
      Atom(name: 'ScoreStoreImpl._score', context: context);

  @override
  double get _score {
    _$_scoreAtom.reportRead();
    return super._score;
  }

  @override
  set _score(double value) {
    _$_scoreAtom.reportWrite(value, super._score, () {
      super._score = value;
    });
  }

  late final _$_scoreApiAtom =
      Atom(name: 'ScoreStoreImpl._scoreApi', context: context);

  @override
  double get _scoreApi {
    _$_scoreApiAtom.reportRead();
    return super._scoreApi;
  }

  @override
  set _scoreApi(double value) {
    _$_scoreApiAtom.reportWrite(value, super._scoreApi, () {
      super._scoreApi = value;
    });
  }

  late final _$ScoreStoreImplActionController =
      ActionController(name: 'ScoreStoreImpl', context: context);

  @override
  void clearScore() {
    final _$actionInfo = _$ScoreStoreImplActionController.startAction(
        name: 'ScoreStoreImpl.clearScore');
    try {
      return super.clearScore();
    } finally {
      _$ScoreStoreImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementScore(String value) {
    final _$actionInfo = _$ScoreStoreImplActionController.startAction(
        name: 'ScoreStoreImpl.incrementScore');
    try {
      return super.incrementScore(value);
    } finally {
      _$ScoreStoreImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementScore(String value) {
    final _$actionInfo = _$ScoreStoreImplActionController.startAction(
        name: 'ScoreStoreImpl.decrementScore');
    try {
      return super.decrementScore(value);
    } finally {
      _$ScoreStoreImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setScore(String? newScore) {
    final _$actionInfo = _$ScoreStoreImplActionController.startAction(
        name: 'ScoreStoreImpl.setScore');
    try {
      return super.setScore(newScore);
    } finally {
      _$ScoreStoreImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
score: ${score},
scoreApi: ${scoreApi},
calculateRest: ${calculateRest}
    ''';
  }
}
