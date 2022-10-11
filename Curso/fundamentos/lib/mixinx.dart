void main(List<String> args) {
  Murcielago murcielago1 = Murcielago();

  murcielago1.murcielago();
  murcielago1.animal();
  murcielago1.mamifero();
  murcielago1.caminar();
  murcielago1.volar();

  Tiburon tiburon1 = Tiburon();
  tiburon1.tiburon();
  tiburon1.animal();
  tiburon1.pez();
  tiburon1.nadar();

  Pato pato1 = Pato();
  pato1.pato();
  pato1.animal();
  pato1.ave();
  pato1.caminar();
  pato1.nadar();
  pato1.volar();
}

abstract class Animal {
  animal() => print('Soy un Animal');
}

abstract class Mamifero extends Animal {
  mamifero() => print('Soy un mamifero');
}

abstract class Ave extends Animal {
  ave() => print('Soy una Ave');
}

abstract class Pez extends Animal {
  pez() => print('Soy un Pez');
}

abstract class Caminar {
  caminar() => print('Puedo Caminar');
}

abstract class Nadar {
  nadar() => print('Puedo Nadar');
}

abstract class Volar {
  volar() => print('Puedo Volar');
}

class Murcielago extends Mamifero with Caminar, Volar {
  murcielago() => print('Soy un murcielago');
}

class Pato extends Ave with Caminar, Volar, Nadar {
  pato() => print('Sou un pato');
}

class Tiburon extends Pez with Nadar {
  tiburon() => print('Soy un tiburon');
}
