import 'value_object.dart';

class Nick implements ValueObject{
  final String _value;

  Nick(this._value);

  @override
  String? validator(){
    if(_value.isEmpty){
      return 'Este campo não pode ser vázio';
    }
    return null;
  }

  @override
  String toString() => _value;
}