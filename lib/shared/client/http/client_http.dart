import 'dart:convert';
import 'package:http/http.dart' as http;

import '../client.dart';

class HttpService implements Client{

  final client = http.Client();

  @override
  Future<dynamic> get(String url, Map<String, String> headers) async {
    final response = await client.get(Uri.parse(url), headers: headers);
    return response;
  }

  @override
  Future<dynamic> post(String url, Map<String, dynamic> data, Map<String, String> headers) async {
    final response = await client.post(Uri.parse(url), headers: headers, body: json.encode(data));
    return response;
  }
}
