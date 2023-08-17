import 'package:classe_objeto/class/pessoa_fisica.dart';
import 'package:classe_objeto/classe_objeto.dart' as classe_objeto;
import 'package:classe_objeto/enum/notification_type.dart';

void main(List<String> arguments) {
  print('Hello world: ${classe_objeto.calculate()}!');
  PessoaFisica pessoa = PessoaFisica('João', 30, 1.80, "066.666.666-66");
  pessoa.setNotificationType(NotificationType.email);

  print(pessoa.getNotificationType());
}
