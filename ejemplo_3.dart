void main(){
  saludar();
  print(getMensaje('carlos'));
  print(gettexto('prueba'));
  print(gettextoArgumentos(nombre: 'carlos', edad: '21'));
  print(flecha());
}

void saludar(){
  print('hola');
}

String getMensaje(nombre){ //parametro dynamic
  return 'hola $nombre';
}

String gettexto(String texto){ //parametro solo tipo String
  return 'este es el texto: $texto';
}

String gettextoArgumentos({String nombre, String edad}){ //de esta forma al enviar los parametros se debe especificar a que parametro se hace referencia
  return 'me llamo $nombre y tengo $edad años';
}

String flecha() => 'esta es una funcion flecha';