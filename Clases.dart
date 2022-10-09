final carlosJson = {'namde': "carlos"};

void main() {
  final carlos = Heroe(name: "Carlos", lastName: "Diaz");
  final carlosJose = Heroe.fromJson(carlosJson);

  print(carlosJose);
  print(carlos);

  final cuadrado = Cuadrado(2);

  print(cuadrado.lado);
  print(cuadrado.calculaArea());
  print(cuadrado.area); //Es un metodo get
  cuadrado.area = 34;
  print(cuadrado.lado);
}

class Heroe {
  String name;
  String lastName;

  Heroe({required this.name, required this.lastName});

  Heroe.fromJson(Map<String, String> json)
      //? si coloco dos punto estoy diciendo que desde que isntancie la clase me hara esto
      : this.name = json['name'] ?? '',
        this.lastName = json['lastName'] ?? "No hay";

  String toString() {
    return 'Su name es: ${this.name} y su lastname es: ${this.lastName}';
  }
}

class Cuadrado {
  double lado;

  Cuadrado(double lado) : this.lado = lado;

  double calculaArea() {
    return this.lado * this.lado;
  }

  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = valor;
  }
}
