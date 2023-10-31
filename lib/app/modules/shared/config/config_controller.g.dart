// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigController on ConfigControllerImpl, Store {
  Computed<int>? _$getIdChangeComputed;

  @override
  int get getIdChange =>
      (_$getIdChangeComputed ??= Computed<int>(() => super.getIdChange,
              name: 'ConfigControllerImpl.getIdChange'))
          .value;
  Computed<bool>? _$getIsChangeComputed;

  @override
  bool get getIsChange =>
      (_$getIsChangeComputed ??= Computed<bool>(() => super.getIsChange,
              name: 'ConfigControllerImpl.getIsChange'))
          .value;

  late final _$editionAtom =
      Atom(name: 'ConfigControllerImpl.edition', context: context);

  @override
  int get edition {
    _$editionAtom.reportRead();
    return super.edition;
  }

  @override
  set edition(int value) {
    _$editionAtom.reportWrite(value, super.edition, () {
      super.edition = value;
    });
  }

  late final _$roundAtom =
      Atom(name: 'ConfigControllerImpl.round', context: context);

  @override
  int get round {
    _$roundAtom.reportRead();
    return super.round;
  }

  @override
  set round(int value) {
    _$roundAtom.reportWrite(value, super.round, () {
      super.round = value;
    });
  }

  late final _$teamAtom =
      Atom(name: 'ConfigControllerImpl.team', context: context);

  @override
  int get team {
    _$teamAtom.reportRead();
    return super.team;
  }

  @override
  set team(int value) {
    _$teamAtom.reportWrite(value, super.team, () {
      super.team = value;
    });
  }

  late final _$dateTimeAtom =
      Atom(name: 'ConfigControllerImpl.dateTime', context: context);

  @override
  String get dateTime {
    _$dateTimeAtom.reportRead();
    return super.dateTime;
  }

  @override
  set dateTime(String value) {
    _$dateTimeAtom.reportWrite(value, super.dateTime, () {
      super.dateTime = value;
    });
  }

  late final _$listMapAtom =
      Atom(name: 'ConfigControllerImpl.listMap', context: context);

  @override
  ObservableList<ConfigLineUpPlayer> get listMap {
    _$listMapAtom.reportRead();
    return super.listMap;
  }

  @override
  set listMap(ObservableList<ConfigLineUpPlayer> value) {
    _$listMapAtom.reportWrite(value, super.listMap, () {
      super.listMap = value;
    });
  }

  late final _$isChangeAtom =
      Atom(name: 'ConfigControllerImpl.isChange', context: context);

  @override
  bool get isChange {
    _$isChangeAtom.reportRead();
    return super.isChange;
  }

  @override
  set isChange(bool value) {
    _$isChangeAtom.reportWrite(value, super.isChange, () {
      super.isChange = value;
    });
  }

  late final _$idChangeAtom =
      Atom(name: 'ConfigControllerImpl.idChange', context: context);

  @override
  int get idChange {
    _$idChangeAtom.reportRead();
    return super.idChange;
  }

  @override
  set idChange(int value) {
    _$idChangeAtom.reportWrite(value, super.idChange, () {
      super.idChange = value;
    });
  }

  late final _$ConfigControllerImplActionController =
      ActionController(name: 'ConfigControllerImpl', context: context);

  @override
  void setEdition(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setEdition');
    try {
      return super.setEdition(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getEdition() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.getEdition');
    try {
      return super.getEdition();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setRound(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setRound');
    try {
      return super.setRound(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getRound() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.getRound');
    try {
      return super.getRound();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTeam(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setTeam');
    try {
      return super.setTeam(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getTeam() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.getTeam');
    try {
      return super.getTeam();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDateTime(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setDateTime');
    try {
      return super.setDateTime(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getDateTime() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.getDateTime');
    try {
      return super.getDateTime();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<ConfigLineUpPlayer> returnList() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.returnList');
    try {
      return super.returnList();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListMap(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setListMap');
    try {
      return super.setListMap(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeElementList(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.removeElementList');
    try {
      return super.removeElementList(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearListMap() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.clearListMap');
    try {
      return super.clearListMap();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool verificaId(int id) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.verificaId');
    try {
      return super.verificaId(id);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool equalList(List<FootballFieldModel> list) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.equalList');
    try {
      return super.equalList(list);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validarEscalacao(String posicao) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.validarEscalacao');
    try {
      return super.validarEscalacao(posicao);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void listFootballField(List<FootballFieldModel> list) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.listFootballField');
    try {
      return super.listFootballField(list);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdChange(dynamic value) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setIdChange');
    try {
      return super.setIdChange(value);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearIdChange() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.clearIdChange');
    try {
      return super.clearIdChange();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChangeTrue() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setChangeTrue');
    try {
      return super.setChangeTrue();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setChangeFalse() {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.setChangeFalse');
    try {
      return super.setChangeFalse();
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  void listPlayerLineUp(PlayerLineUpModel element) {
    final _$actionInfo = _$ConfigControllerImplActionController.startAction(
        name: 'ConfigControllerImpl.listPlayerLineUp');
    try {
      return super.listPlayerLineUp(element);
    } finally {
      _$ConfigControllerImplActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
edition: ${edition},
round: ${round},
team: ${team},
dateTime: ${dateTime},
listMap: ${listMap},
isChange: ${isChange},
idChange: ${idChange},
getIdChange: ${getIdChange},
getIsChange: ${getIsChange}
    ''';
  }
}
