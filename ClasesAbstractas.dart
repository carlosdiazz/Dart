void main() {
  final perro = Perro();
  perro.emitirSonido();

  final superman = Heroe(nombre: 'Carlos');
  print(superman);

  final villano = Heroe(nombre: 'Villano');
  villano.poder = "FUERZAA";
  print(villano);
}

abstract class Animal {
  int? pata;
  Animal();
  void emitirSonido();
}

class Perro implements Animal {
  int? pata;

  void emitirSonido() {
    print('GYUAOOO');
  }
}

abstract class Personaje {
  String? poder;
  String name;

  Personaje({required this.name});

  @override
  String toString() {
    return '$name y $poder';
  }
}

class Heroe extends Personaje {
  Heroe({required String nombre})
      :
        //? Con super ya estoy pasando los valores de la clases que extiendo
        super(name: nombre);
}
