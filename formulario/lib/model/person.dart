import 'dart:math';

class Person {

  String? name;
  double? weight;
  double? height;

  Person({this.name, this.weight, this.height});

  double? calculateIMC() {
    if(weight != null && height != null) {
      var imc = weight! / pow(height!, 2);
      return imc;
    }
    return null;
  }

  @override
  String toString() {
    return 'Nome: $name, Peso: $weight, Altura: $height, IMC: ${calculateIMC()}';
  }
}