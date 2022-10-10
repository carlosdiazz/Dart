void main(List<String> args) {
  String name = 'Carlos';

  (name is String) ? print("Es uan cadena") : print("No es una cadena");

  bool isVivo = true;
  int dinero = 70;

  if (isVivo && dinero >= 50) {
    print('Estas vivo');
  } else {
    print('Esta muerto o con poco dinero');
  }

  if (dinero > 50 || isVivo == "d") {
    print('Tiene mas de 50');
  }
}
