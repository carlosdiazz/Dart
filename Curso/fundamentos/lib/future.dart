import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  print('Hola mundo');
  try {
    String respuesta = await getStatusCode();
    print(respuesta);
  } catch (e) {
    print(e);
  }

  print('Ready');
}

Future<dynamic> getStatusCode() async {
  final Uri url = Uri.parse('https://jsonplacehodddlder.typicode.com/users/1');

  String data = jsonEncode({"name": "carlos", "lastName": "Jose"});

  Completer completer = Completer<String>();

  try {
    http.Response response2 = await http.post(url, body: data);
    print(response2);
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      print('Petiicon hecha');
      final jsonData = jsonDecode(response.body);

      Map<String, dynamic> mapDatos = jsonData;

      print(mapDatos['name']);
      completer.complete('Se ha realizado correctamnente la petiicon');
    } else {
      completer.completeError('Error del servidor');
    }
  } catch (error) {
    print(error);
    completer.completeError('Sin conexion internet');
  }
  return completer.future;
}
