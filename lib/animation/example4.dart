import 'package:flutter/material.dart';

@immutable
class Person {
  final String name;
  final int age;
  final String emoji;

  const Person({
    required this.name,
    required this.age,
    required this.emoji,
  });
}

const people = [
  Person(name: 'John', age: 20, emoji: '🙋‍♂'),
  Person(name: 'Jane', age: 20, emoji: '🙋‍♂'),
  Person(name: 'Jack', age: 20, emoji: '🙋‍♂'),
];

class Example4 extends StatefulWidget {
  const Example4({Key? key}) : super(key: key);

  @override
  State<Example4> createState() => _Example4State();
}

class _Example4State extends State<Example4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('People'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailPage(
                      person: person,
                    ),
                  ),
                );
              },
              leading: Text(
                person.emoji,
                style: const TextStyle(fontSize: 40),
              ),
              title: Text(person.name),
              subtitle: Text('${person.age} years old'),
            );
          }),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Person person;

  const DetailPage({Key? key, required this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          person.emoji,
          style: const TextStyle(fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text(person.name),
            const SizedBox(height: 20,),
            Text('${person.age} years old'),
          ],
        ),
      ),
    );
  }
}
