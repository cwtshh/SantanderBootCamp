import 'package:classe_objeto/class/Pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf;

  // Construtor
  PessoaFisica(String nome, int idade, double altura, this._cpf)
      : super(nome, idade, altura);

  void setCpf(String newCpf) => _cpf = newCpf;
  String getCpf() => _cpf;

  @override
  String toString() {
    return "Nome: ${super.getName()}, Idade: ${super.getAge()}, Altura: ${super.getHeight()}, CPF: $_cpf";
  }
}
