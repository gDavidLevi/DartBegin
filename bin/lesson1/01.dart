/**
 * Строковая интерполяция
 */
void main() {
  print('Hello, World!'); // Привет, Мир!

  var h = "Hello";
  final w = "World";
  print('$h, $w!'); // Hello, World!
  print(r'$h, $w!'); // $h, $w! - отключить строковую интерполяцию

  // Соседние строковые константы конкатенируются
  var helloWorld = "Hello " "World";
  print(helloWorld); // Hello World

  // Вычисляемое выражение должно быть заключено в фигурные скобки ${ }
  print("${helloWorld.toUpperCase()}"); // HELLO WORLD
  print("Ответ равен ${5 + 10}"); // Ответ равен 15

  // При записи многострочных строк первый символ новой строки после """ игнорируется
  var multiline = """<div id=’greeting’>
  "Hello World"
  </div>""";
  print(multiline);

  // В случае строковой интерполяции автоматически вызывается функция toString()
  var obj = new Object();
  print(obj.toString()); // Instance of 'Object'
  print("$obj"); // Instance of 'Object'
}
