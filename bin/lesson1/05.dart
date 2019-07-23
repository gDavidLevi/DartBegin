/**
 * Интерфейс
 */
abstract class IGreetable {
  String sayHello(String name); // поведение 1

  // поведение 2 как экземпляр этого класса (интерфейса) по умолчанию.
  // Полезно, когда нужна одна версия реализации интерфейса.
  factory IGreetable() {
    return new Greeter(); // создание объекта класса с реализованным интерфейсом
  }
}

/**
 * Реализация поведений интерфейса
 */
class Greeter implements IGreetable {
  sayHello(name) {
    return "Hello $name";
  }
}

/**
 * Точка входа
 */
void main() {
  var myGreetable = new IGreetable();
  var message = myGreetable.sayHello("Dart");
  print(message);
}
