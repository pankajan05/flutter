main(List<String> arguments) {
  print('hello world');

  var something = 'hello world';
  something = 'cat can walk';
  print(something);

  //const / final new change
  const nope = 1;

  final noper = 1;

  num age = 10;
  age = 10.232;
  print('Age is $age');

  int cats = 10;
  double pi = 3.14;

  String title = 'hello';
  title += ' World';
  print(title);

  print(title.substring(2,4));

}