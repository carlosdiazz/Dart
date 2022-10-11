//? Aqui hago una importancion de un archivo propio
import 'package:fundamentos/librerias_propias.dart' as areas;
import 'package:http/http.dart';

void main(List<String> arguments) {
  print(areas.circulo(radio: 2));
  print(areas.cuadrado(lado: 20));
  print(areas.triangulo(base: 12, altura: 2));
}
