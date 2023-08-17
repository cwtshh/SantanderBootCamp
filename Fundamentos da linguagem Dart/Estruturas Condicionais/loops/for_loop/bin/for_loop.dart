void main(List<String> arguments) {
  for (int i = 0; i <= 99; i++) {
    print("O valor de i é: $i");
  }

  List<String> nomes = ['João', 'Maria', 'José', 'Pedro', 'Ana'];

  for (int i = 0; i < nomes.length; i++) {
    print("O nome da posição ${i + 1} é: ${nomes[i]}");
  }

  int resultado = 0;

  for (int i = 0; i <= 10; i++) {
    resultado += i;
    print(resultado);
  }
}
