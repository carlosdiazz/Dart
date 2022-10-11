void main(List<String> args) {
  final uri = 'https://carlos.com jose?carlos=sdds';

  final encodeFull = Uri.encodeFull(uri);
  final decodeFull = Uri.decodeFull(encodeFull);

  print('Encode $encodeFull');
  print('Decode $decodeFull');

  final url = Uri.parse(uri);

  print(url.host);
  print(url.port);
  print(url.scheme);
  print(url.queryParameters);

  final url2 = Uri(scheme: 'https', host: 'carlos.com', path: '/get-user');

  print(url2);
}
