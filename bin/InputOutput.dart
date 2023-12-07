import 'dart:io';

void main() {
  print("Qual a sua idade?");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      int idade = int.parse(input);
      print("Ano que vem sua idade será ${idade + 1}");
    } catch (e) {
      print("Você digitou um texto em vez de um número.");
    }
  } else {
    print("Você não digitou nada.");
  }
}
