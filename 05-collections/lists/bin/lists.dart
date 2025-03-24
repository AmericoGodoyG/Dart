/*
  No Dart, as collections são usadas para armazenar
  e manipular grupos de objetos. 

  List
  - Semelhante a um array em outras linguagens
  - Permitem elementos duplicados
  - Os itens têm índces numéricos começando em 0
  - Pode ser mutável (List) ou imutável (const list)

*/
void main () {

  List<String> listaEmail = ['joao@gmail.com', 'maria@gmail.com'];

  // adiciona um novo email a lista
  listaEmail.add('enzo@gmail.com');

  // verifica a existencia de um email, case existe, nao é adiconado
  if (listaEmail.contains('enzo@gmail.com') == false) {
    listaEmail.add('enzo@gmail.com');
  }

  // Envia uma mensagem para cada email da lista
  for (String email in listaEmail) {
    enviarEmail(email);
  }

}

// Envia uma mensagem para um e-mail
void enviarEmail(String email){
  print('Email enviado para: $email');
}
