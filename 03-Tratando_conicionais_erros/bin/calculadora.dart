import 'dart:io';

void main() {

  // Nullsafaty(segurança contra valores nulos)
  // ! garantimos ao Dart que não venha valores nulos
  
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";

  // Funções:  tipos_de_retorno nome_da_função(parâmetros){}
  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao(){
    print(numeroUm - numeroDois);
  }

  void divisao(){
    print(numeroUm / numeroDois);
  }

  void multiplicacao(){
    print(numeroUm * numeroDois);
  }

   /*
    Obs: A partir do Dart 3 é possível fazer comprações lógicas dentro do switch case 
    usando o Patter Maching.

    Ex:
      int idade = 20;

    switch (idade) {
      case >= 18:
        print("Maior de idade");
        break;
      case < 18:
        print("Menor de idade");
        break;
      default:
        print("Idade inválida");
    }
  */

  void calcular(){
    // Tratando operações
    switch (operacao) {
      case "+": 
        soma();
        break;

      case "-":
        subtracao();
        break;
      
      case "*":
        multiplicacao();
        break;
      
      case "/":
        divisao();
        break;

      default:
        print("Insira um operação válida");
    } 
  }

  print("Digite o primeiro valor: ");
  String? entrada = stdin.readLineSync();
  if (entrada != null) { // null é diferente de vazio
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }
  
  print("Selecione a operação:  [+] [-] [*] [/] ");
  entrada = stdin.readLineSync();
  if(entrada != null) {
    operacao = entrada;
  }

  print("Digite o segundo valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) { 
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  print("O reultado da operação é:");
  calcular();

}