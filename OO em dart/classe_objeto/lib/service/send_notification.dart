import 'package:classe_objeto/class/Pessoa.dart';
import 'package:classe_objeto/enum/notification_type.dart';
import 'package:classe_objeto/service/notification_interface.dart';

class SendNotification {
  NotificationInterface? notification;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getNotificationType()) {
      case NotificationType.email:
        print("Enviando notificação por e-mail para ${pessoa.getName()}");
        break;

      case NotificationType.sms:
        print("Enviando notificação por SMS para ${pessoa.getName()}");
        break;

      case NotificationType.pushNotification:
        print("Enviando notificação por Push para ${pessoa.getName()}");
        break;

      default:
        print("Não foi possível enviar a notificação para ${pessoa.getName()}");
    }
  }
}
