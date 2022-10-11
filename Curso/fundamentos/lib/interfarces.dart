void main(List<String> args) {
  Gerente gerente = Gerente(name: 'Carlos', tipoGerente: 'Jefe');
  Supervisor supervisor = Supervisor(name: 'Jose', area: 'Contabilidad');

  print('Nombre: ${gerente.name} Codigo: ${gerente.codigoEmpleado('CODEC1')}');
  print('Nombre: ${supervisor.name} Codigo: ${supervisor.codigoEmpleado(34)}');
}

//Aqui hago un tipo de dato generico ya se string o int o el que se mande
abstract class CodigoId<T> {
  codigoEmpleado(T codigo);
}

class Gerente implements CodigoId<String> {
  String name;
  String tipoGerente;

  Gerente({required this.name, required this.tipoGerente});

  @override
  codigoEmpleado(String codigo) {
    return codigo;
  }
}

class Supervisor extends CodigoId<int> {
  String name;
  String area;

  Supervisor({required this.name, required this.area});

  @override
  codigoEmpleado(int codigo) {
    return codigo;
  }
}
