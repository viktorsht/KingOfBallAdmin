import 'value_object.dart';

class AbreviacaoTeam implements ValueObject{
  final String _value;
  static final RegExp _specialCharacters = RegExp(r'[!@#%^&*()_+{}\[\]:;<>,.?~\\/-]');

  AbreviacaoTeam(this._value);

  @override
  String? validator(){
    if(_value.isEmpty){
      return 'Este campo não pode ser vázio';
    }
    else if(_value.length > 3){
      return 'Abrevição é até 3 letras';
    }
    else if (_specialCharacters.hasMatch(_value)) {
      return 'Abreviação não pode conter caracteres especiais';
    }
    return null;
  }

  @override
  String toString() => _value;
}