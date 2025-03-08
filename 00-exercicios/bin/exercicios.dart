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
 // Exercicio 9
  print("Digite sua idade: ");

  // Tratando tipos
  String? entradaIdade = stdin.readLineSync();
  
  if (entradaIdade != null) {
    if (entradaIdade != "") {

      int idade = int.parse(entradaIdade);

      if (idade >= 18) {

        print("Habilitação permitida!");
      } else {

        print("Habilitação não permitida");
    }
  }

  // Exercicio 10
  print("Digite um número de 1 a 12");
  String? entradaMes = stdin.readLineSync();
  if (entradaMes != null) {

    if(entradaMes != ""){

      int mes = int.parse(entradaMes);

      switch(mes){
        case 1:
          print("Janeiro");
          break;
        case 2:
          print("Fevereiro");
          break;
        case 3:
          print("Março");
          break;
        case 4:
          print("Abril");
          break;
        case 5:
          print("Maio");
          break;
        case 6:
          print("Junho");
          break;
        case 7:
          print("Julho");
          break;
        case 8:
          print("Agosto");
          break;
        case 9:
          print("Setembro");
          break;
        case 10:
          print("Outubro");
          break;
        case 11:
          print("Novembro");
          break;
        case 12:
          print("Dezembro");
          break;
        default:
          print("Valor inválido");
      }
    }
  } 

  // Exercicio 11
  double saldo = 1000.0; // Saldo inicial em reais

  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');

  String? entradaPix = stdin.readLineSync();

  // Tratando null e empty
  if (entradaPix != null) {

    if (entradaPix != "") {

      double valorPix = double.parse(entradaPix);
      
      if (valorPix <= saldo) {
        print("Realizando Pix...");
        print("Saldo atual: R\$${saldo - valorPix}");
      }

    }

  }
  print("Operação finalizada!");

  // Exercicio 12
  print("Digite sua idade: ");
  String? idadeEntrada = stdin.readLineSync();

  print("Digite o país em que você está [usa] [br] [jp]: ");
  String? pais = stdin.readLineSync();

  if (idadeEntrada != null && pais != null) {
    if (idadeEntrada != "" && pais != "") {

      int idade = int.parse(idadeEntrada);

      switch(pais){

        case "usa":
          if (idade >= 16) {
            print("[USA] Habilitação permitida. Idade: $idade");
          } else {
            print("[USA] Habilitação negada. Idade: $idade");
          }
        break;

        case "br":
          if (idade >= 18) {
            print("[BR] Habilitação permitida. Idade: $idade");
          } else {
            print("[BR] Habilitação negada. Idade: $idade");
          }
        break;
    
        case "jp":
          if (idade >= 20) {
            print("[JP] Habilitação permitida. Idade: $idade");
          } else {
            print("[JP] Habilitação negada. Idade: $idade");
          }
        break;

        default:
          print("País não encontrado!");
      }
    }
  }
}
}
