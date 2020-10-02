void main() {
  List numeros = [1,2,3,4,5];
  print(numeros);

  numeros.add(6);
  print(numeros);

  numeros.add('siete');
  print(numeros);

  List<int> onlyNumeros = [1,2,3,4,5];
  print(onlyNumeros);

  onlyNumeros.add(6);
  print(onlyNumeros);

  //onlyNumeros.add('siete'); error solo acepta numeros

  List nuevaLista = List(10);
  print(nuevaLista);
  //nuevaLista.add(1); error no se pueden agregar mas elementos a la lista
  nuevaLista[0] = 1;
  print(nuevaLista);

  Map persona = { // <dynamic, dynamic>
    'nombre': 'carlos',
    'edad': 21,
    'soltero': false
  };

  print(persona);
  print(persona['nombre']);

  Map<int, dynamic> personas = {
    1: 'carlos',
    2: 'daniel'
  };
  print(personas);

  personas.addAll({3: 'maria'});
  print(personas);
}