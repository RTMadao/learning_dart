void main(){
  //comentarios igual que en java :v
  //cadena
  String nombre = 'carlos';
  String cadena0 = 'to"me';
  String cadena1 = "to'me";
  String cadena2 = "to\"me";
  print('$cadena0 - $cadena1 - $cadena2');
  print(cadena0);
  print(cadena1[0]);

  //numeros
  int numero = 100;
  double pi = 3.1416;
  var n1 = 1;
  var n2 =1.0;

  print(n1 == n2); // true, pero n1 es de tipo int y n2 es de tipo double


  print('Hola $nombre, escogiste el numero $numero y el valor aproximado de pi es $pi');

  bool activado = true;

  if (activado) {
    print('esta activado');
  } else {
    print('esta apagado');
  }

  if (!activado) print('apagado');
  else print('encendido');
}