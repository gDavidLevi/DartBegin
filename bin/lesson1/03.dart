/**
 * Традиционная структура на основе классов
 */
void main() {
  var greeter = new Greeter();
  greeter.greeting = "Hello";
  greeter.name = "World";
  print(greeter.sayHello());
}

/**
 * Простой класс
 */
class Greeter {
  var greeting; // открытое свойство
  var _name; // закрытое свойство (доступно только внутри библиотеки)

  /**
   * Открытый метод
   */
  sayHello() {
    return "$greeting, ${this._name}!"; // троковая интерполяция
  }

  // Сокращенная запись геттера
  get name => this._name;

  // Сокращенная запись сеттера
  set name(value) => this._name = value;
}
