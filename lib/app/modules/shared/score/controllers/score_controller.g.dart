// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ScoreController on ScoreControllerImpl, Store {
  late final _$stateControllerAtom =
      Atom(name: 'ScoreControllerImpl.stateController', context: context);

  @override
  String get stateController {
    _$stateControllerAtom.reportRead();
    return super.stateController;
  }

  @override
  set stateController(String value) {
    _$stateControllerAtom.reportWrite(value, super.stateController, () {
      super.stateController = value;
    });
  }

  late final _$myScoreTeamAtom =
      Atom(name: 'ScoreControllerImpl.myScoreTeam', context: context);

  @override
  ScoreModel get myScoreTeam {
    _$myScoreTeamAtom.reportRead();
    return super.myScoreTeam;
  }

  @override
  set myScoreTeam(ScoreModel value) {
    _$myScoreTeamAtom.reportWrite(value, super.myScoreTeam, () {
      super.myScoreTeam = value;
    });
  }

  late final _$scoreServicesAtom =
      Atom(name: 'ScoreControllerImpl.scoreServices', context: context);

  @override
  ScoreServices get scoreServices {
    _$scoreServicesAtom.reportRead();
    return super.scoreServices;
  }

  @override
  set scoreServices(ScoreServices value) {
    _$scoreServicesAtom.reportWrite(value, super.scoreServices, () {
      super.scoreServices = value;
    });
  }

  late final _$scoreTeamAsyncAction =
      AsyncAction('ScoreControllerImpl.scoreTeam', context: context);

  @override
  Future<ScoreModel> scoreTeam(String token, String team) {
    return _$scoreTeamAsyncAction.run(() => super.scoreTeam(token, team));
  }

  late final _$setMyScoreTeamAsyncAction =
      AsyncAction('ScoreControllerImpl.setMyScoreTeam', context: context);

  @override
  Future<void> setMyScoreTeam() {
    return _$setMyScoreTeamAsyncAction.run(() => super.setMyScoreTeam());
  }

  @override
  String toString() {
    return '''
stateController: ${stateController},
myScoreTeam: ${myScoreTeam},
scoreServices: ${scoreServices}
    ''';
  }
}
