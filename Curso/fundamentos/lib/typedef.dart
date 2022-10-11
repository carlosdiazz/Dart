void main(List<String> args) {
  operacionesMatematicas operacion;

  operacion = sumar;
  print(operacion(2, 4));

  operacion = restar;
  print(operacion(5, 2));

  operacion = sumar;
  print(operacion(5, 50));
}

typedef operacionesMatematicas(int a, int b);

int multiplicar(int a, int b) => a * b;

int sumar(int a, int b) => a + b;

int restar(int a, int b) => a - b;
