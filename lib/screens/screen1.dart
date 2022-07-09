import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Налаштування підключення до облікової системи'),
        ),
        body: Container(
            child: Center(
                child: const Text(
          'Колись тут будуть налаштування додатка',
          style: TextStyle(fontSize: 24),
        ))));
  }
}
