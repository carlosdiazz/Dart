import 'dart:async';

void main(List<String> args) {
  final streamController = StreamController<List<String>>();

  streamController.stream.listen((data) {
    data.forEach((element) => print(element));
  },
      onError: (error) => print(error),
      onDone: () => print('Se hizo correctamente el stream'));

  streamController.add(['carlos', 'Jose', "Maria", "Diaz", "Adrian"]);
  streamController.add(['carlos', 'Jose', "Maria", "Diaz", "Adrian"]);
  streamController.add(['carlos', 'Jose', "Maria", "Diaz", "Adrian"]);
  streamController.addError('Error mandando');
  streamController.add(['carlos', 'Jose', "Maria", "Diaz", "Adrian"]);
  streamController.add(['1', '2', "3", "4", "5"]);
  streamController.close();
}
