import 'package:equatable/equatable.dart';

void main() {
  var obj1 = Person(id: 101, name: 'manu', age: 20);
  var obj2 = Person(id: 101, name: 'manu', age: 20);
  print(obj1 == obj2);
}

class Person extends Equatable {
  int id;
  String name;
  int age;

  Person({required this.id, required this.name, required this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, age];
}
