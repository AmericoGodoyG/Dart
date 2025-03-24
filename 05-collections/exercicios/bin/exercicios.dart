import 'dart:io';

void main() {
  
  //[Exercício-01]
  List<String> tarefas = ['Estudar', 'Comprar mantimentos', 'Treinar'];
  exibirTarefas(tarefas); 

  
  //[Exercício-02] 
  List<int> idsFuncionarios = [1, 2, 3, 4, 5, 6, 7, 8, 9]; 
  idsPares(idsFuncionarios);

  //[Exercício-03]
  List<String> produtos = ["maçã", "banana", "maçã", "laranja", "maçã"]; 
  print(macaNaLista(produtos)); 

  // [Exercício-04]
  List<String> carrinho = ["arroz", "feijão", "macarrão", "leite", "açúcar"]; 
  List<String> visitados = ["arroz", "feijão", "macarrão", "leite", "açúcar", "tomate", "abacaxi"]; 
  prodVisitados(carrinho, visitados);

  // [Exercício-05]
  Set<int> codigosDisponiveis = {1, 2, 3, 4, 5};
  print("Insira um código: ");
  int codigo = int.parse(stdin.readLineSync()!);
  verificarConjunto(codigosDisponiveis, codigo); 

  // [Exercício-06]
  Set<int> produtosSemana = {1, 2, 3, 4};
  Set<int> produtosMes = {3, 4, 5, 6};
  produtosEmPromocoes(produtosSemana, produtosMes);

  // [Exercício-07]
  Set<String> produtosVendidos = {"maçã", "banana", "laranja"};   
  Set<String> produtosEstoque = {"banana", "kiwi", "laranja"}; 

  produtosNaoVendidos(produtosVendidos, produtosEstoque);

}

// [Exericio-01]
void exibirTarefas (List<String> listaTarefas) {
  for (String tarefa in listaTarefas) {
    print(tarefa);
  }
}

// [Exericio-02]
void idsPares(List<int> numeros) {
  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0){
      print(numeros[i]);
    }
  }
}

// [Exercício-03]
int macaNaLista(List<String> produtos) {

  int contador = 0;

  for (int i = 0; i < produtos.length; i++) {
    if (produtos[i] == 'maçã') {
      contador++;
    }
  }

  return contador;

}

// [Exercício-04]
void prodVisitados(List<String> carrinho, List<String> visitados) {
  for (String produto in visitados) {
    if (!carrinho.contains(produto)) {
      print(produto);
    }
  }
}

// [Exercício-05]
void verificarConjunto(Set<int> codigosDisponivel, int codigo) {
  if (codigosDisponivel.contains(codigo)) {
    print("Codigo: $codigo. disponível");
  } else {
    print("Codigo: $codigo. indisponível");
  }
}*/

// [Exercício-06]
void produtosEmPromocoes(Set<int> promoSemana, Set<int> prodMes) {
  Set<int> prodPresentes = {};

  for (int idSemana in promoSemana) {
    if (prodMes.contains(idSemana)) {
      prodPresentes.add(idSemana);
    }
  }
  print(prodPresentes);
}

void produtosNaoVendidos(Set<String> vendidos, Set<String> estoque){
  Set<String> naoVendidos = {};

  for (String produto in estoque) {
    if (!vendidos.contains(produto)) {
      naoVendidos.add(produto);
    }
  }

  for (String produto in naoVendidos) {
    print(produto);
  }

}
