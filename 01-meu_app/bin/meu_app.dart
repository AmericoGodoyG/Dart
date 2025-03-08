// dart:io (in) (out)
import 'dart:io';

// Os programas rodam dentro da funçao main
void main() {

  // print("Olá, me chamo Dart. Qual é o seu nome?");
  // var entrada = stdin.readLineSync();
  // print("Muito prazer, $entrada. Vamos fazer vários programas juntos!");

  print('Hello World!');

  print("Olá me chamdo Dart. Qual o seu nome?");

  String? nome = stdin.readLineSync();

  print("Muito prazer, $nome. Vamos fazer vários programas juntos.");

  print("Qual é a sua idade $nome?");
  var idade = stdin.readLineSync();

  print("A idade de $nome é $idade anos!");

}
