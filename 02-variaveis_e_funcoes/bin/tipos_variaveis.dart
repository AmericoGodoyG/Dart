void main() {
  /* 
  Tipos primitivos
  - int
  - double
  - bool
  - null
  - run (um únivo caractere, como 'a', 'B' ou '3')

  Tipos compostos
  - String
  - List: Armazenam valores ordenados do mesmo tipo, como uma lista de compras com itens repetidos ou não.
  - Map: Associam chaves únicas a valores, como uma agenda telefônica com nomes e números de telefone.
  - Set: Coleções de valores não ordenados e sem valores repetidos, como um conjunto de cartas de baralho sem repetições.

  OBS: Todos os tipos (primitivos e compostos) são uma referencia a um objeto 
  */

  // Variáveis primitivas
  int numeroInteiro = 10;
  double numeroDecimal = 3.14;
  String texto = "Este é um texto";
  bool isAtivo = true;

  // Variáveis compostas
  List<String> nomes = ["Ana", "João", "Maria"];
  Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
  Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez

  // Acessando valores
  print("Número inteiro: $numeroInteiro");
  print("Número decimal: $numeroDecimal");
  print("Texto:  $texto");
  print("Ativo: $isAtivo");

  print("==============================");

  print("Primeiro nome da lista: ${nomes[0]}");
  print("Telefone da Ana: ${agenda['Ana']}");
  print("Números únicos no conjunto: $numerosUnicos");
 
  print("==============================");

  // função de conversao string -> double
  void converterEImprimir(String valor){
    double valorConvertido = double.parse(valor);
    print("valor convertido: $valorConvertido");
  }

  String valorMonetario = "10";
  converterEImprimir(valorMonetario);

  /*
    **** ESCOPO ****
    O escopo do Dart é fechado, 
    a função soma() teve acesso 
    as variáveis numeroUm e numeroDois
    porque a função soma() foi definida
    dentro da função principal Main().

    Funções declaradas dentro dos pais
    tem acesso ao que é declarado no escopo externo,
    mas as funções pais, não tem acesso ao
    que é declarado dentro das funções filhas
  */
}