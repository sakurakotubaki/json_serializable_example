import 'package:flutter/material.dart';
import 'package:json_serializable_example/example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ダミーデータ
    final person = <Person>[
      Person(firstName: 'John', lastName: 'Doe', dateOfBirth: DateTime(1990, 1, 1)),
      Person(firstName: 'Jane', lastName: 'Smith', dateOfBirth: null),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Serializable Example'),
      ),
      body: ListView.builder(
        itemCount: person.length,
        itemBuilder: (context, index) {
          final p = person[index];
          return ListTile(
            title: Text('${p.firstName} ${p.lastName}'),
            subtitle: Text(p.dateOfBirth?.toIso8601String() ?? 'No date of birth'),
          );
        },
      ),
    );
  }
}