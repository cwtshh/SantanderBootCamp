import 'package:refazendo_calculadora/refazendo_calculadora.dart'
    as refazendo_calculadora;
import 'dart:io';

double soma(double a, double b) {
  return a + b;
}

double subtracao(double a, double b) {
  return a - b;
}

double multiplicacao(double a, double b) {
  return a * b;
}

double divisao(double a, double b) {
  return a / b;
}

void main(List<String> arguments) {
  print('Digite o primeiro número: ');
  double a = double.parse(stdin.readLineSync() ?? '0');

  print('Digite o segundo número: ');
  double b = double.parse(stdin.readLineSync() ?? '0');

  print('Digite a operação: ');
  String operacao = stdin.readLineSync() ?? '';

  switch (operacao) {
    case '+':
      print(soma(a, b));
      break;

    case '-':
      print(subtracao(a, b));
      break;

    case '*':
      print(multiplicacao(a, b));
      break;

    case '/':
      print(divisao(a, b));
      break;

    default:
      print('Operação inválida');
  }
}
