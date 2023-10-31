import 'package:kingofball_admin/app/DTOs/value_object.dart';

class Password implements ValueObject {
  final String _value;

  Password(this._value);

  @override
  String? validator() {
    if (_value.isEmpty) {
      return 'Campo senha vazio!';
    }

    if (_value.length < 8) {
      return 'A senha deve ter pelo menos 8 caracteres';
    }

    if (!_value.contains(RegExp(r'[A-Z]'))) {
      return 'A senha deve conter pelo menos uma letra maiúscula';
    }

    if (!_value.contains(RegExp(r'[0-9]'))) {
      return 'A senha deve conter pelo menos um número';
    }

    return null;
  }

  @override
  String toString() => _value;
}
