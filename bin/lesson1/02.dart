/**
 * Факультативные типы, константы (final),
 */
void main() {
  var messageA; // Нет аннотаций типов
  var messageB = "Hello Dart";

  String messageC; // Аннотация типа присутствует (String)
  String messageD = "Hello Dart";

  final messageE = "Hello Dart"; // Использование final без аннотации типа
  final String messageF = "Hello Dart"; // Использование final с аннотацией типа

  // Сохраняет "false" в динамической переменной nums
  final bool nums = trueIfNull(1, 2);
  // Сохраняет "true" в динамической переменной strings
  final bool strings = trueIfNull(null, null);
  // Выводит переменные nums и strings на консоль
  print("$nums"); // false
  print("$strings"); // false
}

/**
 * Функция принимает два значения
 */
bool trueIfNull(int a, int b) {
  return a == null && b == null;
}
