void main(List<String> args) {
  Animal rubi = Animal(name: 'Rubi', edad: 12);
  rubi.imprimir();

  final json = {'name': 'Rubi 2', 'edad': 120};

  Animal rubi2 = Animal.fromJson(json);
  rubi2.imprimir();

  Animal rubi3 = Animal.pez('tipoAnimal');
  rubi3.imprimir();

  Calculadora operaciones = Calculadora();
  operaciones.multiplicar(num1: 10, num2: 2);
  operaciones.sumar(num1: 10, num2: 23);
  operaciones.restar(num1: 34, num2: 34);

  //Clases con get y set
  Triangulo figura1 = Triangulo();
  figura1.altura = 2;
  figura1.base = 3;
  print(figura1.area);
}

class Animal {
  String? name;
  int? edad;
  String? lastName;

  Animal({required this.name, required this.edad, this.lastName = ''});

  Animal.fromJson(Map jsonMap) {
    name = jsonMap['name'];
    edad = jsonMap['edad'];
  }

  Animal.pez(String tipoAnimal) : this(name: 'Es un pez', edad: 12);

  imprimir() {
    print('El nombre es $name LastName: $lastName  la edad es: $edad');
  }
}

class Calculadora {
  int multiplicar({required int num1, required int num2}) {
    print('$num1 * $num2 = ${num1 * num2}');
    return num1 * num2;
  }

  int sumar({required int num1, required int num2}) {
    print('$num1 + $num2 = ${num1 + num2}');
    return num1 + num2;
  }

  int restar({required int num1, required int num2}) {
    print('$num1 - $num2 = ${num1 - num2}');
    return num1 - num2;
  }
}

class Triangulo {
  double _altura = 0;
  double _base = 0;

  set base(double base) {
    this._base = base;
  }

  set altura(double altura) {
    this._altura = altura;
  }

  double get area {
    return _altura * _base;
  }
}
