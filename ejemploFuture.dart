void main() async {
  print('1. por pedir datos');
  //metodos similares a JS con las promesas
  String mensaje = await httpGet('http://puto.el/que/lo/lea');
  //httpGet('http://puto.el/que/lo/lea')
  //.then((mensaje) => print(mensaje));
  print('2. $mensaje');
  print('3. listo');
}

Future<String> httpGet(String url){
  return Future.delayed(new Duration(seconds: 5), () => 'hola mundo');
}