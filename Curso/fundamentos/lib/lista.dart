void main(List<String> args) {
  List<int> listaEnteros = [1, 2, 3, 4];

  listaEnteros.add(5);
  listaEnteros.add(6);
  listaEnteros.addAll([7, 8, 7, 6, 5, 3, 4, 5]);

  listaEnteros.forEach((element) {
    print(element);
  });

  print(listaEnteros.first); //EImprimer el primer elemento
  print(listaEnteros.last); //Imprime el ultimo elemento

  listaEnteros.insert(0, 0); //Aqui me lo anade donde le coloque el index
  listaEnteros.insertAll(0, [1, 1, 1, 1, 1]);

  listaEnteros.removeAt(0); //Aqui elimino el elemento que este en el indice 0
  listaEnteros.remove(6); // Aqui elimono el numero 6

  listaEnteros.removeWhere(
      (element) => element >= 5); // Aqui elimino los numeros mayores que 5

  print(listaEnteros);

  print(listaEnteros.asMap()); // Aqui lo convierto en un Map

  //? Esto es notacion en casacada puedo aplicar varios metodos sin tenerlo que llamar la variable varias veces
  listaEnteros
    ..clear()
    ..add(10)
    ..addAll([11, 12, 13]);

  print(listaEnteros);
}
