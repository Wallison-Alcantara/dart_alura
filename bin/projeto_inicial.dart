void main(List<String> arguments) {
  int idade = 20;
  double altura = 1.91;
  bool geek = false;
  String nome = 'Wallison';
  String apelido = 'Wall';
  if(geek){
    print('ele é nerd');
    print(geek);
    print('Meu nome: $nome, \n'
        'minha idade: $idade \n '
        'minha altura: $altura \n '
        'meu apelido: $apelido');
  }
  else{
    List<String> listanomes = ['Wallison','Vitoria','Gabriel','Marcos','Vinicius','Alberto'];
    print(listanomes[0]);
    print(listanomes.length); //tamanho da lista

    List<dynamic> wallison = [20,1.91,true,'Wallison','Wall'];
    print(wallison);
    print('Eu sou ${wallison[3]}, tenho ${wallison[0]} anos, '
        'tenho ${wallison[1]} metros de altura. \n'
        'Meu apelido é: ${wallison[4]} e sou geek? ${wallison[2]}');
  }

}
