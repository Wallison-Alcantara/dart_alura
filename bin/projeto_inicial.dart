void main(List<String> arguments) {
  int idade = 20; // tipagem estática ( o Dart é possui tipagem mista)
  //var idade = 30; o proprio dart identifica a variavel tipagem dinamica
  double altura = 1.91;
  bool geek = false;
  const String nome = 'Wallison';
  final String apelido;
  apelido = 'Wall';
  //apelido = 'teste'; este daria erro
  if (geek) {
    print('ele é nerd');
    print(geek);
    print('Meu nome: $nome, \n'
        'minha idade: $idade \n '
        'minha altura: $altura \n '
        'meu apelido: $apelido');
  } else {
    List<String> listanomes = [
      'Wallison',
      'Vitoria',
      'Gabriel',
      'Marcos',
      'Vinicius',
      'Alberto'
    ];
    print(listanomes[0]);
    print(listanomes.length); //tamanho da lista

    List<dynamic> wallison = [idade, altura, geek, nome, apelido];
    print(wallison);

    print('Eu sou ${wallison[3]}, tenho ${wallison[0]} anos, '
        'tenho ${wallison[1]} metros de altura. \n'
        'Meu apelido é: ${wallison[4]} e sou geek? ${wallison[2]}');
  }

  for (int i = 0; i < 5; i++) {
    print('Conclui $i voltas');
  }

  int energia1 = 100;
  while (energia1 > 0) {
    print("Mias uma repetição");
    energia1 = energia1 - 6;
  }
  int energia2 = 100;
  do {
    print("Mais uma repetição");
    energia2 = energia2 - 6;
  } while (energia2 > 0);
}
