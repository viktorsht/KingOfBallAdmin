import 'dart:convert';
import 'package:rei_da_bola/shared/auth/auth_controller.dart';

import '../../../../../shared/api/api_headers.dart';
import '../../../../../shared/api/routes_api.dart';
import '../../../../../shared/client/http/client_http.dart';
import '../../models/soccer_match_model.dart';

class RoundTodayServices{

  final headersApi = DefaultHeadersApi();
  final httpService = HttpService();
  final auth = AuthController();
  
  Future<SoccerMatchModel> getRoundToday(String token, String today) async {
    final url = '${RoutersApi.roundToday}$today';
    final response = await httpService.get(url, headersApi.headersToken(token));
    if(response.statusCode == 401){
      final data = await auth.refreshToken();
      if(data != null) getRoundToday(data, today);
    }
    final json = jsonDecode(response.body);
    return SoccerMatchModel.fromJson(json);
  }
}