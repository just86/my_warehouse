import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Підключення до облікової системи',
            style: TextStyle(fontSize: 18),
            softWrap: true,
          ),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Text('Адреса сервера:'),
                SizedBox(width: 15),
                Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Адреса публікації'))),
              ],
            ),
            Row(children: [
              Text('Логін:'),
              SizedBox(width: 15),
              Expanded(
                  child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Логін з облік. системи'))),
            ]),
            Row(
              children: [
                Text('Пароль:'),
                SizedBox(width: 15),
                Expanded(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Пароль з облік. системи')))
              ],
            ),
          ],
        ));
  }
}
//
