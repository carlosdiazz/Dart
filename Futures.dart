//? Esta son las promesas

void main() async {
  print('Antes');
  hhtpGet("dd").then((value) => print(value.toUpperCase()));

  final data = await hhtpGet("dd");
  print(data);

  final name = await getName("34");
  print(name);
  print('Final');
}

Future<String> getName(String id) async {
  return '$id - Carlos';
}

Future<String> hhtpGet(String url) {
  return Future.delayed(Duration(seconds: 3), (() => 'Hola mundo'));
}
