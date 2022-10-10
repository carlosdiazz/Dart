//? Si una funcion tiene void es porque no devuelve nada

void main() {
  //?Variables
  final String name = "Carlos";
  const String lastName = "Jose";
  const int edad = 14;

  saludar(name);
  saludar2(name: name, lastname: lastName, edad: edad);
}

void listaEj() {
  final List<double> numeros = [1, 2, 3, 4];

  numeros.add(5);

  print(numeros);
  print(numeros[2]);
}

void mapasEj() {
  Map<String, dynamic> persona = {"Name": "Carlos", "Edad": 12};

  print(persona);
  print(persona['Name']);
}

void saludar(String name, [String lastname = "Apellido"]) {
  print('Hola $name $lastname');
}

void saludar2({String name = '', required String lastname, required int edad}) {
  print('Hola $name $lastname tienes $edad');
}
