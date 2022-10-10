abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

abstract class Volador {
  void volar() => print('Volar');
}

abstract class Caminante {
  void caminar() => print('Caminar');
}

abstract class Nadador {
  void nadar() => print('Nadarrr');
}

//? Aqui digo que tendra una funcion de nadador
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

void main() {
  final delfin1 = Delfin();
  final murcielago1 = Murcielago();

  delfin1.nadar();
  murcielago1.volar();
  murcielago1.caminar();
}
