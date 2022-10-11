void main(List<String> args) {
  Carro carro = Carro(cilindors: 3, llantas: 2);
  carro.velocidad();

  CarroPequeno carrito = CarroPequeno(gomas: 3);
  carrito.infoCarro();
}

abstract class Automovil {
  int llantas;
  int cilindors;

  Automovil({required this.llantas, required this.cilindors});

  void velocidad();
}

class Carro implements Automovil {
  @override
  int cilindors;

  @override
  int llantas;

  Carro({required this.cilindors, required this.llantas});

  @override
  void velocidad() {
    print('VA RAPPIDODOOOO');
  }
}

class Yipeta implements Automovil {
  @override
  int cilindors;
  @override
  int llantas;

  Yipeta({required this.cilindors, required this.llantas});

  @override
  void velocidad() {
    print('VEEE');
  }
}

//Aqui implemento la herencia
class CarroPequeno extends Carro {
  int gomas;

  CarroPequeno({
    required this.gomas,
  }) : super(cilindors: 2, llantas: 3);

  void infoCarro() {
    print('Cilindros: $cilindors, llantas: $llantas, gomas $gomas');
  }
}
