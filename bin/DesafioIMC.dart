import 'dart:io';

bool estaPreenchido(String? input){
  return input?.isNotEmpty == true;
}
void mensagem(String? nome, String? idade, String? altura, String? peso, double imc){
  String mensagem = '''
      Olá, seu nome é $nome, você tem $idade anos;
      Sua altura é de $altura m e seu peso atual é $peso KG.
      Seu IMC é $imc
      ''';
  print(mensagem);
}

void main(){
  print("CALCULADORA DE IMC");
  print("Digite seu nome");
  String? nomeInput = stdin.readLineSync();
  print("Digite sua idade");
  String? idadeInput = stdin.readLineSync();
  print("Digite sua altura");
  String? alturaInput = stdin.readLineSync();
  print("Digite seu peso");
  String? pesoInput = stdin.readLineSync();
  double imc;

  bool preenchido = estaPreenchido(nomeInput) &&
                    estaPreenchido(idadeInput) &&
                    estaPreenchido(alturaInput) &&
                    estaPreenchido(pesoInput);

  print(idadeInput);

  if(preenchido) {
    try{
      int idade = int.parse(idadeInput!);
      double altura = double.parse(alturaInput!);
      double peso = double.parse(pesoInput!);
      imc = peso/(altura*altura);
      if(imc < 17){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Você está muito abaixo do peso");
      }
      else if(imc >=17 && imc <=18.49){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Você está abaixo do peso");
      }
      else if(imc >=18.50 && imc <=24.99){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("você está com o peso normal");
      }
      else if(imc >= 25 && imc<=29.99){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Acima do peso");
      }
      else if(imc >=30 && imc<=34.99){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Obesidade I");
      }
      else if(imc >=35 && imc<=39.99){
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Obesidade II (severa)");
      }
      else{
        mensagem(nomeInput, idadeInput, alturaInput, pesoInput, imc);
        print("Obesidade III (mórbita)");
      }
    }catch (e){
      print("Um dos valores que você digitou (idade, peso, altura) não é número e sim um texto");
    }
  }
  else{
    print("Um campo deixou de ser preenchido");
  }
}