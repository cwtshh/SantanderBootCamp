import 'package:dart_test/class/viacep.dart';
import 'package:dart_test/dart_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateMocks([MockViaCep])
void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('Calcula o desconto do produto sem porcentagem', () {
    expect(calcularDesconto(1000, 150, false), equals(850));
  });

  test('Calcula o desconto do produto com o preço zerado', () {
    expect(() => calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o desconto do produto com porcentagem', () {
    expect(calcularDesconto(1000, 15, true), 850);
  });

  test('Calcula o desconto do produto com o preço zerado', () {
    expect(() => calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Calcula o valor do produto com desconto', () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };

    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        expect(
            calcularDesconto(
                double.parse(values['valor'].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            equals(expected));
      });
    });
  });

  test('retorna cep', () async {
    ViaCep viacep = ViaCep();
    var body = await viacep.retornarCep('01001-000');
    expect(body['bairro'], equals('Sé'));
  });
}

class MockViaCep extends Mock implements ViaCep {}
