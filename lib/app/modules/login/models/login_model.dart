
import '../../../DTOs/email.dart';
import '../../../DTOs/password.dart';

class LoginModel {
  Email _email;
  Password _password;

  Email get email => _email;
  void setEmail(String value) => _email = Email(value);

  Password get password => _password;
  void setPassword(String value) => _password = Password(value);

  LoginModel({
    required String email, 
    required String password
  }) :  _email = Email(email),
        _password = Password(password);
  
  factory LoginModel.empty(){
    return LoginModel(
      email: '', 
      password: ''
    );
  }

  static LoginModel fromJson(Map<String, dynamic> json) {
    return LoginModel(
      email: json['email'] ?? '',
      password: json['password'] ?? ''
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email.toString();
    data['password'] = password.toString();
    return data;
  }
}
