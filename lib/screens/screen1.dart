import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Підключення до облікової системи', style: TextStyle(fontSize: 18), softWrap: true,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Адреса сервера:'),
                    TextFormField(decoration: const InputDecoration(hintText: 'Адреса публікації'))
                  ],
                ),
                // Text('Адреса сервера:'),
                // TextField(decoration: const InputDecoration(hintText: 'Адреса публікації'),)
              ]
          )
        ));
  }
}
//
