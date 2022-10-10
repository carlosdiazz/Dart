void main(List<String> args) {
  String correo;
  //String mensaje;

  correo = "   carlos.@mail.com   ";

  print(correo.contains('@')); //Sabe si incluye una @
  print(correo.endsWith('.com')); //Sabe si termina en .com
  print(correo.length); //Me dice el tamano
  print(correo.substring(0, 2)); //Me corta
  print(correo.trim()); //Me quita los espacio en blanco

  StringBuffer oraciones = StringBuffer();

  oraciones.write('Hola ');
  oraciones.write('COmo estas');
  oraciones.writeAll(['Hola', '!Lo']);

  print(oraciones);
}
