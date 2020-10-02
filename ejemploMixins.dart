void main(){
  final pato = new Gato();
  pato.caminar();
}

abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


//mixins 
abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

//clases
class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Caminante, Volador {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Caminante, Volador {}
class Tiburon extends Pez with Nadador {}