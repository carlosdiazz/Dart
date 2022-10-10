void main(List<String> args) {
  Map<String, String> personas = {
    "Name": "Carlos",
    "apellido": "Diaz",
    "Direccion": "La Vega"
  };

  personas.addAll({'Pais': "Republica Dominicana"});
  personas.addAll({'Educacion': "Master en tecnologia"});

  personas.forEach(
    (key, value) {
      print("$value - $key");
    },
  );

  personas.update('Name', ((value) => 'CARLOSSSS'));

  personas.removeWhere((key, value) => value == 'Diazz');

  print(personas['Name']);
  print(personas);
}
