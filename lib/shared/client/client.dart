abstract class Client{
  get(String url, Map<String, String> headers);
  post(String url, Map<String, dynamic> data, Map<String, String> headers);
}