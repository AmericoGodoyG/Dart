import 'dart:io';

void main() {

  // Nullsafaty(segurança contra valores nulos)
  // ! garantimos ao Dart que não venha valores nulos
  
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";

  /*
    Arrays sãa tipos compostos, elas tem funcionalidades
    das quais podemos utilizar. 

    Ex: 
    
      contains() Verifica a existência de um elemento no array

    Sintaxe Array:
    List<tipo_array> variavel = <tipo_array>[]; */
  List<String> operacoes = <String>["+", "-", "*", "/"];

  // Funções:  tipos_de_retorno nome_da_função(parâmetros){escopo_de_função}
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
        print("Insira um operação válida.");
    } 
  }

  // Verifica a existência de uma operação em uma lista
  void getOperacao() {                  // ${interpolação composta}
    print("Selecione a operação desejada ${operacoes.toString()}");
    entrada  = stdin.readLineSync();
    if (entrada != null) { // validação do nullo
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Insira uma operação valida.");
        // Recurção é quando chamamos uma função dentro de sí
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) { // null é diferente de vazio
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) { 
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }

  print("O reultado da operação é:");
  calcular();

}