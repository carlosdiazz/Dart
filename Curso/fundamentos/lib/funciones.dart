void main(List<String> args) {
  print(saludar('Carlos'));
  print(saludar2(name: 'Jose'));
  print(saludar3(name: 'Jose', lastName: nameAleatorio(false)));
}

String saludar(String name) {
  String saludo = "Hola $name";
  return saludo;
}

String saludar2({required String name, String? apellido}) {
  String saludo = "Hola Name: $name Apellido: $apellido";
  return saludo;
}

String nameAleatorio(bool value) {
  return value ? 'Jose' : 'Ninguno';
}

String saludar3(
    {required String name, String apellido = '', required String lastName}) {
  String saludo = "Hola Name: $name LastName: $lastName Apellido: $apellido";
  return saludo;
}

//Uan funcion que le suma 3 al numero que se le pase
int sumarTres(int number) => 3 + number;
