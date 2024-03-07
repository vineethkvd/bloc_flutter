class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});

  // The copyWith method creates a new Person with updated fields
  Person copyWith({String? name, int? age}) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

void main() {
  Person person1 = Person(name: 'John', age: 30);

  // Use copyWith to create a new Person with updated age
  Person person2 = person1.copyWith(age: 35);

  print(person1);  // Prints: Person{name: John, age: 30}
  print(person2);  // Prints: Person{name: John, age: 35}
}
