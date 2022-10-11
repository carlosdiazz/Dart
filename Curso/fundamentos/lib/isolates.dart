import 'dart:async';
import 'dart:io';
import 'dart:isolate';

//?COn isolate puedo generar o correr codigo en segundo plano
void main(List<String> args) async {
  print("Comenzando cronometro...");
  await inicio();
  print('Presiona enter para terminar');
  await stdin.first;
  parar();
  print('Cronometro termiando con exito');
  exit(0);
}

Isolate? isolate;

inicio() async {
  ReceivePort recivePort = ReceivePort();
  isolate = await Isolate.spawn(cronometro, recivePort.sendPort);
  recivePort.listen(manejoMensajes, onDone: () => print("Terminado"));
}

cronometro(SendPort sendPort) async {
  int segundos = 0;
  int minutos = 0;

  Timer.periodic(Duration(seconds: 1), (Timer timer) {
    segundos++;
    if (segundos == 60) {
      segundos = 0;
      minutos++;
    }
    String mensaje = "${formartNumber(minutos)}:${formartNumber(segundos)}";
    sendPort.send(mensaje);
  });
}

manejoMensajes(dynamic data) async {
  print('Tiempo transcurrido: $data');
}

parar() async {
  if (isolate != null) {
    print('Termiando cronometro');
    isolate?.kill(priority: Isolate.immediate);
    isolate = null;
  }
}

String formartNumber(int numero) {
  if (numero.toString().length == 1) {
    return '0$numero';
  } else {
    return '$numero';
  }
}
