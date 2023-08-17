void main(List<String> arguments) {
  List<int> numeros = [1, 2, 3, 4, 5];

  for (var number in numeros) {
    print(number);
  }

  numeros.forEach((element) {
    print(element);
  });
}
