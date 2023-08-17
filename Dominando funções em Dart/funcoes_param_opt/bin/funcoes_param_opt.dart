void printUserName(String name, {String? sobrenome}) {
  if (sobrenome != null) {
    print("$name $sobrenome");
  } else {
    print(name);
  }
}

void main(List<String> arguments) {
  printUserName("João");
  printUserName("Maria");
  printUserName("José");

  printUserName("João", sobrenome: "Silva");
}
