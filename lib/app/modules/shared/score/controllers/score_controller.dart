import 'package:mobx/mobx.dart';
import 'package:rei_da_bola/app/modules/shared/score/models/score_model.dart';
import 'package:rei_da_bola/app/modules/shared/score/services/score_service.dart';
import 'package:rei_da_bola/shared/api/state_response.dart';
import '../../../../../shared/token/token_manager.dart';
import '../../user/controller/user_controller.dart';

part 'score_controller.g.dart';

class ScoreController = ScoreControllerImpl with _$ScoreController;

abstract class ScoreControllerImpl with Store{

  @observable
  String stateController = StateResponse.start;

  @observable
  ScoreModel myScoreTeam = ScoreModel();

  @observable
  ScoreServices scoreServices = ScoreServices();

  @action
  Future<ScoreModel> scoreTeam(String token, String team) async {
    ScoreModel retorno = ScoreModel();
    stateController = StateResponse.loading;
    try {
      retorno = await scoreServices.getScore(token, team);
      stateController = StateResponse.sucess;
    } catch (e) {
      stateController = StateResponse.error;
    }
    return retorno; 
  }

  @action
  Future<void> setMyScoreTeam() async {
    TokenManager tokenManager = TokenManager();
    final userController = UserController();
    await userController.initUserInfomations();
    String? token = await tokenManager.getToken();
    if(token != null){
      myScoreTeam = await scoreTeam(token, userController.team.id.toString());
    }
  }
}