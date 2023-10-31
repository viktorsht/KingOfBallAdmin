import 'value_object.dart';

class Name implements ValueObject {
  final String _value;
  static final RegExp _specialCharacters = RegExp(r'[!@#%^&*()_+{}\[\]:;<>,.?~\\/-]');

  Name(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) {
      return 'Este campo não pode ser vazio';
    } else if (_specialCharacters.hasMatch(_value)) {
      return 'Este campo não pode conter caracteres especiais';
    }
    return null;
  }

  @override
  String toString() => _value;
}
