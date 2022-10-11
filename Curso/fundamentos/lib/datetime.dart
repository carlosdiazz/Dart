void main(List<String> args) {
  final hoy = DateTime.now();

  print("Ano: ${hoy.year} Mes: ${hoy.month} Dia: ${hoy.day}");

  final date = DateTime.parse('2020-05-09');
  print("Ano: ${date.year} Mes: ${date.month} Dia: ${date.day}");

  final newDate = hoy.add(Duration(days: 10, hours: 5));
  print("Ano: ${newDate.year} Mes: ${newDate.month} Dia: ${newDate.day}");

  final diferenciaDate = newDate.difference(hoy);
  print(
      "Dias faltantes: ${diferenciaDate.inDays} Horas faltantes: ${diferenciaDate.inHours} Minutos faltantes: ${diferenciaDate.inMinutes} ");

  //Aqui comapro si una fecha es mas grnde que otra
  print(
      'La fecha nueva es menor al dia de hoy? ${newDate.isBefore(hoy) ? "SI" : "NO"}');
}
