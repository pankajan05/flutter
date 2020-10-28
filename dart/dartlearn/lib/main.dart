main(List<String> arguments) {
  print('hello world');

  var something = 'hello world';
  something = 'cat can walk';
  print(something);

  //const / final new change
  const nope = 1;

  final noper = 1;

  //numbers and integer, double
  num age = 10;
  age = 10.232;
  print('Age is $age');

  int cats = 10;
  double pi = 3.14;

  //string
  String title = 'hello';
  title += ' World. This is pankajan from dart.';
  print(title);

  print(title.substring(2,4));
  assert(title.contains('World'));

  //list
  List<String> list = title.split(' ');
  print(list);

  print(list.elementAt(2));
  print(list[2]);

  list.add('mars');
  print(list);
  list.insert(1, 'nayan');
  print(list);

  print(list.indexOf('mars'));

  list.forEach((element) {
    print(element);
  });
}