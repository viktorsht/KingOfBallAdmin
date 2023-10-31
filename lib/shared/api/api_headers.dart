abstract class HeadersApi {
  Map<String, String> get headersSimple;
  Map<String, String> headersToken(String token);
}

class DefaultHeadersApi extends HeadersApi {
  @override
  Map<String, String> get headersSimple => {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  @override
  Map<String, String> headersToken(String token) {
    Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };
    return headers;
  }

}
