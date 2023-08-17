import 'dart:ffi';

import 'package:funcoes_recursivas/funcoes_recursivas.dart'
    as funcoes_recursivas;

int ackerman(int m, int n) {
  if (m == 0) {
    return n + 1;
  }
  if (m > 0 && n == 0) {
    return ackerman(m - 1, 1);
  }
  if (m > 0 && n > 0) {
    return ackerman(m - 1, ackerman(m, n - 1));
  }

  return 0;
}

int fatorial(int a) {
  if (a == 1) {
    return a;
  }
  return a * fatorial(a - 1);
}

void main(List<String> arguments) {
  print(ackerman(3, 2));
  print(fatorial(5));
}
