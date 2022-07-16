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
          ElevatedButton(
            onPressed: () {},
            child: Text('Клієнти'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'list_of_warehouses');
              },
              child: Text('Склади')),
          ElevatedButton(onPressed: () {}, child: Text('Товари')),
        ],
      ),
    );
  }
}
