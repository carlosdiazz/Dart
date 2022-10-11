import 'dart:io';

void main(List<String> args) async {
  File('./archivo.txt').createSync();

  File file = File('./archivo.txt');

  String contenido;

  if (await file.exists()) {
    contenido = await file.readAsStringSync();
    print(contenido);

    await file.writeAsString('Dart es un lenguaje genial');
    contenido = await file.readAsString();
    print(contenido);
  }
}
