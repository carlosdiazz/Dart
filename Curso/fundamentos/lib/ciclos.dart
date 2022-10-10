void main(List<String> args) {
  List<String> listaPaises = ['Canada', 'Colombia', 'Peru', "Argentina"];

  for (int pais = 0; pais < listaPaises.length; pais++) {
    print(("Pais ${pais + 1} ${listaPaises[pais]}"));
  }

  for (int numero = 0; numero < 12; numero++) {
    print('$numero * 9 = ${numero * 9}');
  }

  int contador = 0;
  int veces = 0;
  while (contador < 10) {
    print(veces++);
    if (veces == 1) {
      break;
    }
    //contador++;
  }

  contador = 10;
  do {
    print('QLOQ');
    contador++;
  } while (contador < 2);

  int opcion = 5;

  switch (opcion) {
    case 1:
      print('Opcion 1');
      break;
    case 2:
      print('Opcion 2');
      break;
    case 3:
      print('Opcion 3');
      break;
    case 4:
      print('Opcion 4');
      break;
  }
}
