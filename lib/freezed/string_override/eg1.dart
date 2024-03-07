class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}
void main(){
  Person obj1=Person(name: 'anu', age: 10);
  print(obj1.toString());
}