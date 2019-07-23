/**
 * Интерфейс с поведениями
 */
abstract class Interface {
  printGreeting(); // поведение 1

  var name; // поведение 2
}

/**
 * Класс реализует поведения интерфейса
 */
class Welcomer implements Interface {
  @override
  var name;

  @override
  printGreeting() => print("Hello ${name}");
}

/**
 * Класс реализует поведения интерфейса
 */
class Greeter implements Welcomer {
  @override
  var name;

  @override
  printGreeting() => print("Greetings ${name}");
}

/**
 * Функция верхнего уровня
 */
void sayHello(Interface interface) {
  interface.printGreeting();
}

void main() {
  Interface welcomer = new Welcomer();
  welcomer.name = "Tom";
  sayHello(welcomer);

  Interface greeter = new Greeter();
  greeter.name = "Tom";
  sayHello(greeter);
}
