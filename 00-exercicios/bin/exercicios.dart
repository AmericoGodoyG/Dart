import 'dart:io';

void main(List<String> arguments) {
  
  //Exericicio 1;
  print("Insira um número: ");
  
  int numero = int.parse(stdin.readLineSync()!);

  void dobroNumero(int nuemro){
    int dobro = numero * 2;
    print("O dobro de $numero é $dobro.");
  }

  dobroNumero(numero);

  //Exercicios 2;
  List<int> listaIdades = [];
  int somaIdades = 0;

  for(int i = 0; i < 3; i++){

    print("Digite a idade da ${i+1}ª pessoa: ");
    int idade = int.parse(stdin.readLineSync()!);
    
    listaIdades.add(idade);

    somaIdades += listaIdades[i];
  }

  double mediaIdades = somaIdades / 3;

  print("A média das idade: $mediaIdades.");

  //Exercicio 3;
  String nome = stdin.readLineSync()!;
  String cpf = stdin.readLineSync()!;
  int idade = int.parse(stdin.readLineSync()!);
  double altura = double.parse(stdin.readLineSync()!);
  bool comunidade = true;

  print("Eu sou $nome, \nmeu CPF é $cpf, \nsou membro da comunidade $comunidade. \nEu tenho $altura metros de altura e \n$idade anos de idade");

  // Exercício 4
  print("Digite o número de horas trabalhadas: ");
  int horasTrabalhadas = int.parse(stdin.readLineSync()!);

  double valorHora = 50.00;

  void salarioLiquido(int horas){

    double salarioBruto = horasTrabalhadas * valorHora;

    double salarioLiquido = salarioBruto - (salarioBruto * 0.05);

    print("Salário líquido é R\$$salarioLiquido");

  }

  salarioLiquido(horasTrabalhadas);

  // Exercicio 5
  double saldo = 1000.0; // Saldo inicial em reais

  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  // Exercicio 6 e 7(codigo refatorado)
  int pontosIniciais = 100;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  
  int pontosRetirados = int.parse(stdin.readLineSync()!);

  void subtracaoPontos(int pontosRetirados){
    int pontosRestantes = pontosIniciais - pontosRetirados;
    print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
  }

  subtracaoPontos(pontosRetirados);
  
  // Exercicio 8
  print("Bem vindo ao mercado No Precinho!");

  print("Para validarmos o seu cupom, digite o valor em compras realizadas: ");
  double valorEmCompras = double.parse(stdin.readLineSync()!);

  int cupons = (valorEmCompras / 50).floor();

  print('O cliente receberá $cupons cupom(s) para esta compra.');

}
