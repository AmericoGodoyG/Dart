/*
  Set (conjunto)
  - Não permite elementos duplicados
  - Não garante uma ordem fixa dos elementos
  - Útil para armazenar valores únicos
*/

void main () {

  Set<String> setEmails = {'joao@gmail.com', 'maria@gmail.com'};

  String enzoEmail = 'enzo@gmail.com' ;

  // Set não permite duplicidade, logo somente o primeiro foi adicionado
  setEmails.add(enzoEmail);
  setEmails.add(enzoEmail);

  if (setEmails.contains(enzoEmail) == true) {
    print('O E-mail: $enzoEmail, já exite.');
  } else {
    print('O E-mail: $enzoEmail, foi adicionado a lista.');
  }

  for (String email in setEmails) {
    print(email);
  }

}

