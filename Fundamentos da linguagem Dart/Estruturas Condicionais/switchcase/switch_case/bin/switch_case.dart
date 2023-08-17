import 'package:switch_case/switch_case.dart' as switch_case;

import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  print("Bem vindo a calculadora");

  print("Digite o primeiro numero");
  var entrada1 = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(entrada1!);

  print("Digite o segundo numero");
  var entrada2 = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(entrada2!);

  print("Digite a operação");
  var operacao = stdin.readLineSync(encoding: utf8);
  var operador = operacao ?? "";

  switch (operador) {
    case "+":
      print("O resultado é: ${numero1 + numero2}");
      break;

    case "-":
      print("O resultado é: ${numero1 - numero2}");
      break;

    case "*":
      print("O resultado é: ${numero1 * numero2}");
      break;

    case "/":
      print("O resultado é: ${numero1 / numero2}");
      break;

    default:
      print("Operador inválido");
  }
}
