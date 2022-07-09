import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Підключення до облікової системи', style: TextStyle(fontSize: 18), softWrap: true,),
        ),
        body: Container(
            child: Row(
              children: const [
                Text('Адреса сервера'),
                TextField(decoration: InputDecoration(hintText: 'Адреса публікації облікової системи'), ),
              ],
            )));
  }
}

