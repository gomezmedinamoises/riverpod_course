import 'package:flutter/material.dart';
import 'package:riverpod_course/features/user/models/person.dart';

class PersonScreen extends StatelessWidget {
  const PersonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const person1 = Person(
      id: '1',
      name: 'Godrick',
      emailAddress: 'godrick@mail.com',
    );
    const person2 = Person(
      id: '2',
      name: 'Margit',
      emailAddress: 'margit@mail.com',
    );
    const person3 = Person(
      id: '3',
      name: 'Morgott',
      emailAddress: 'morgott@mail.com',
    );

    final person1a = person1.copyWith(name: 'Godrick The Grafted');
    final person2a =
        person2.copyWith(emailAddress: 'margintheomenfell@leyndell.com');
    final person3a = person3.copyWith(id: 'morgottthebest');

    print(person1a);
    print(person2a);
    print(person3a);

    print(person1);
    print(person2);
    print(person3);

    print(person1 == person3);

    print(person2.hashCode);
    print(person2a.hashCode);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
    );
  }
}
