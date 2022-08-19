import 'package:flutter/material.dart';

class Catalogs extends StatelessWidget {
  const Catalogs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Довідники'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'list_of_clients');
              },
              child: Text('Клієнти'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'list_of_warehouses');
                },
                child: Text('Склади')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ElevatedButton(onPressed: () {}, child: Text('Товари')),
          ),
        ],
      ),
    );
  }
}
