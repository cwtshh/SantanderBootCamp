import 'package:classe_objeto/enum/notification_type.dart';

abstract class Pessoa {
  String _nome;
  int _idade;
  double _altura;
  NotificationType notificationType = NotificationType.none;

  // Construtor
  Pessoa(this._nome, this._idade, this._altura);

  void setNotificationType(NotificationType newNotificationType) =>
      notificationType = newNotificationType;

  NotificationType getNotificationType() => notificationType;

  void setName(String newName) => _nome = newName;
  String getName() => _nome;

  void setAge(int newAge) => _idade = newAge;
  int getAge() => _idade;

  void setHeight(double newHeight) => _altura = newHeight;
  double getHeight() => _altura;

  @override
  String toString() {
    return "Nome: $_nome, Idade: $_idade, Altura: $_altura";
  }
}
