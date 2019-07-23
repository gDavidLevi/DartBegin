library myLibrary; // Объявляется, что этот файл – библиотека myLibrary

import "./lib/myOtherLibrary.dart"; // Импортируется библиотека из другой папки
import "./lib/myOtherLibrary.dart" as other; //..чтобы избежать конфликты имен

// Включаются другие исходные файлы (в частности, содержащий класс Greeter и Leaver)
part "greeter.dart";

part "leaver.dart";

/**
 * Определяется функция в библиотечной области видимости верхнего уровня
 */
greetFunc() {
  // Используется класс из файла greeter.dart
  var g = new Greeter();

  // Используется класс из файла leaver.dart
  var l = new Leaver();

  // Обращение в функции библиотеки через псевдоним
  int s = other.sayHello(1);

  // Вызывается функция из области видимости верхнего уровня библиотеки myOtherLibrary.dart
  sayHello(g);
}
