/*
  Map (Dicionario)
  - Estrutura chave-valor (parecido com JSON)
  - As chaves devem ser únicas
  - Muito útil para armazenar informaçoões de forma associativa
*/

void main () {

  Map<String, String> pessoasEmails = {
    'joao':'joao@gmail.com',
    'maria':'maria@gmail.com'
  };

  // Exibindo o email associado a uma chave
  print(pessoasEmails['joao']);
  print(pessoasEmails['maria']);

  // Adicionando um elemento ao Map
  pessoasEmails['enzo'] = 'enzo@gmail.com';

  // Verificando uma chave exite no Map
  print(pessoasEmails.containsKey('enzo')); // true


  print('Exibindo as chaves do Map');
  for(String nome in pessoasEmails.keys){
    print(nome);
  }

  print('Exibindo os emails do Map');
  for (String email in pessoasEmails.values) {
    print(email);
  }

}

void enviarEmail(String email) {
  print('Email enviado para: $email');

}