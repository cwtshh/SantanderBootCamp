import 'package:classe_objeto/class/Pessoa.dart';
import 'package:classe_objeto/service/notification_interface.dart';

class NotificationSms implements NotificationInterface {
  @override
  void sendNotification(Pessoa pessoa) {
    print("Enviando notificação por SMS para ${pessoa.getName()}");
  }
}
