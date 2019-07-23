/**
 * Функции как полноценные объекты
 */
String sayHello(name) => "Hello $name";

main() {
  // Функция присваивается переменной
  var myFunc = sayHello;

  print(myFunc("World"));

  // Определение анинимной функции
  var mySumFunc = (a, b) {
    return a + b;
  };

  // Вызов анинимной функции
  var c = mySumFunc(1, 2);
  print(c);
}
