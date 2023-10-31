import 'package:mobx/mobx.dart';
import 'models/config_model.dart';

part 'config_controller.g.dart';

class ConfigController = ConfigControllerImpl with _$ConfigController;

abstract class ConfigControllerImpl with Store{

  @observable
  int edition = 0;

  @action
  void setEdition(value) => edition = value;

  @action
  int getEdition() => edition;

  @observable
  int round = 0;

  @action
  void setRound(value) => round = value;

  @action
  int getRound() => round;

  @observable
  int team = 0;

  @action
  void setTeam(value) => team = value;
  
  @action
  int getTeam() => team;

  @observable
  String dateTime = '';
  
  @action
  void setDateTime(value) => dateTime = value;

  @action
  String getDateTime() => dateTime;

  @observable
  ObservableList<ConfigLineUpPlayer> listMap = ObservableList();

  @action
  List<ConfigLineUpPlayer> returnList() => listMap;

  @action
  void setListMap(value) => listMap.add(value);

  @action
  void removeElementList(value) => listMap.remove(value);

  @action
  void clearListMap() {
    listMap.clear();
  }

  @action
  bool verificaId(int id){
    for (var objeto in listMap) {
      if (objeto.id == id) {
        return true;
      }
    }
    return false;
  }

  @action
  bool equalList(List<FootballFieldModel> list){
    for(var element in list){
      if(verificaId(element.id!) == true) return true;
    }
    return false;
  }

  @action
  bool validarEscalacao(String posicao) {
    int limiteZagueiros = 2;
    int limiteGoleiro = 1;
    int limiteLaterais = 2;
    int limiteMeias = 3;
    int limiteAtacantes = 3;

    int numZagueiros = 0;
    int numLaterais = 0;
    int numMeias = 0;
    int numAtacantes = 0;
    int numGoleiro = 0;

    for (var jogador in listMap) {
      switch (jogador.position) {
        case "ZAG":
          numZagueiros++;
          break;
        case "LAT":
          numLaterais++;
          break;
        case "MEI":
          numMeias++;
          break;
        case "ATA":
          numAtacantes++;
          break;
      }
    }

    switch (posicao) {
      case "GOL":
        return numGoleiro < limiteGoleiro;
      case "ZAG":
        return numZagueiros < limiteZagueiros;
      case "LAT":
        return numLaterais < limiteLaterais;
      case "MEI":
        return numMeias < limiteMeias;
      case "ATA":
        return numAtacantes < limiteAtacantes;
      default:
        return false; // Posição inválida
    }
  }


  @action
  void listFootballField(List<FootballFieldModel> list){
    if(list.isNotEmpty){
      for (var element in list){
        if(verificaId(element.id!) == false){
          final body = ConfigLineUpPlayer(
            id: element.id,
            firstName:element.playerEdition?.player?.firstName!,
            lastName: element.playerEdition?.player?.lastName!,
            position: element.playerEdition?.player?.position?.name!,
            abbPosition: element.playerEdition?.player?.position?.abb!,
          );
          setListMap(body);
        }
      }
    }
  }
  
  @observable
  bool isChange = false;

  @observable
  int idChange = 0;

  @action
  void setIdChange(value) => idChange = value;

  @action
  void clearIdChange() => idChange = 0;
  
  @computed
  int get getIdChange => idChange;
  
  @action
  void setChangeTrue() => isChange = true;
  
  @action
  void setChangeFalse() => isChange = false;

  @computed
  bool get getIsChange => isChange;

  int indiceList(int value){
    int retorno = 0;
    for(var i in listMap){
      if(i.id == value){
        retorno = listMap.indexOf(i);
      }
    }
    return retorno;
  }

  @action
  void listPlayerLineUp(PlayerLineUpModel element){
    final body = ConfigLineUpPlayer(
      id: element.id,
      firstName:element.player?.firstName!,
      lastName: element.player?.lastName!,
      position: element.player?.position?.name!,
      abbPosition: element.player?.position?.abb!,
    );
    if(verificaId(body.id!) == false && getIsChange == false){
      //print(body.id);
      setListMap(body);
    }
    if(verificaId(idChange) == true && getIsChange == true){
      int indice = indiceList(idChange);
      listMap[indice] = body;

    }
  }
}