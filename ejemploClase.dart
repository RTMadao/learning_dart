import 'dart:convert';

void main() {

  final rawJson = '{ "nombre": "wolverine", "poder": "regeneracion"}';
  final parseJson = json.decode(rawJson);

  print(parseJson);

  final superman = new Heroe(2,'superman','es un marcianito'); // final no puede ser modificado parecido a const
  var batman = Heroe(3,'batman', 'tiene las lukas'); // se puede definir de esta forma tambien sin el new
  final wolverine = new Heroe.fromJson(parseJson);

  print(superman); //llama al metodo toString
  print(batman);
  print(wolverine);

  superman.id = 5;
  batman.id = 4;

  print(superman);
  print(batman);
  print(wolverine.id);

  final perro = new Perro();
  perro.emitirSonido();

  final est = Estudiante();
}

class Heroe {
  int _id;
  String nombre;
  String poder;

  // Heroe(String nombre, String poder){
  //   this.nombre = nombre;
  //   this.poder = poder;
  // } forma tradicional

  Heroe(this._id, this.nombre, this.poder);

  Heroe.fromJson(pjson){
    _id = 1;
    nombre = pjson['nombre'];
    poder = pjson['poder'];
  }

  set id( int n){
    if(n<0) throw('el id no puede ser menor a 0');
    else _id = n;
  }

  int get id => _id+_id;

  String toString() => '$_id $nombre $poder';
}

abstract class Animal {
  int nPatas;
  void emitirSonido();
}

class Perro implements Animal{
  int nPatas;
  bool tienePelo;

  void emitirSonido() => print('guau');
  
}

class Persona{
  String id;
  String nombre;
}

class Estudiante extends Persona{
  String salon;
}

class Profesor extends Persona{
  String asignatura;
}