import 'package:rei_da_bola/app/modules/shared/score/models/score_model.dart';
import 'package:rei_da_bola/shared/api/api_headers.dart';
import 'package:rei_da_bola/shared/auth/auth_controller.dart';
import 'package:rei_da_bola/shared/client/http/client_http.dart';
import '../../../../../shared/api/routes_api.dart';

class ScoreServices{
  
  final httpService = HttpService();
  final headersApi = DefaultHeadersApi();
  final auth = AuthController();

  Future<ScoreModel> getScore(String token, String team) async {
    final url = '${RoutersApi.score}$team';
    final response = await httpService.get(url, headersApi.headersToken(token));
    if(response.statusCode == 401){
      final data = await auth.refreshToken();
      if(data != null) getScore(data, team);
    }
    return ScoreModel.fromJson(response['score']);
  }
}