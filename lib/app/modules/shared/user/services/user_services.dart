import 'dart:convert';

import 'package:rei_da_bola/shared/auth/auth_controller.dart';
import 'package:rei_da_bola/shared/client/http/client_http.dart';
import '../../../../../shared/api/api_headers.dart';
import '../../../../../shared/api/routes_api.dart';
import '../../../../../shared/auth/token_model.dart';
import '../../../start_navigation_bar/modules/home/models/team_game_model.dart';

class UserServices{
  final httpService = HttpService();
  final headersApi = DefaultHeadersApi();
  final auth = AuthController();

  Future<int> checkIdUser(String token) async {
    final body = TokenModel(token:token);
    final response = await httpService.post(RoutersApi.me, body.toJson(), headersApi.headersSimple);
    if(response.statusCode == 401){
      final data = await auth.refreshToken();
      if(data != null) checkIdUser(data);
    }
    final json = jsonDecode(response.body);
    return json['id'];
  }
  
  Future<TeamGameModel> getCheckTeamVirtual(String token, String idUser) async {
    final url = '${RoutersApi.checkIdUser}$idUser';
    final response = await httpService.get(url, headersApi.headersToken(token));
    if(response.statusCode == 401){
      final data = await auth.refreshToken();
      if(data != null) getCheckTeamVirtual(data, idUser);
    }
    final json = jsonDecode(response.body);
    return TeamGameModel.fromJson(json[0]);
  }
}