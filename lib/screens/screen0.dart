import 'package:flutter/material.dart';
import 'package:my_warehouse/screens/screen2.dart';
import 'package:my_warehouse/widgets/drawer.dart';
import 'package:my_warehouse/screens/screen1.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Screen0(),
        initialRoute: '/',
        routes: {
          '/': (context) => const Screen0(),
          'settings': (context) => const Settings(),
          'catalogs': (context) => const Catalogs(),
        });
  }
}

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Створити продаж', 'Прийняти товар на склад', 'Інвентаризація товарів'];
    final List<int> colorCodes = <int>[100, 100, 100];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Склад компанії'),
      ),
      body:
      // ListView(children: [
      //   const SizedBox(
      //     height: 5,
      //   ),
      //
      //   Container(
      //     color: Colors.amber[600],
      //     width: 1,
      //     child: ElevatedButton(
      //       onPressed: () {},
      //       child: const Text('Створити продаж'),
      //     ),
      //   ),
      //   ElevatedButton(
      //     onPressed: () {},
      //     child: const Text('Прийняти товар на склад'),
      //   ),
      //   ElevatedButton(onPressed: () {}, child: Text('Інвентаризація товарів')),
      // ]),



    ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 40,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text(entries[index], style: TextStyle(fontSize: 15),)),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      drawer: const MainDrawer(),
    );
  }
}