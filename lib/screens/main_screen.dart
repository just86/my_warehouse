import 'package:flutter/material.dart';
import 'package:my_warehouse/screens/catalogs_screen.dart';
import 'package:my_warehouse/widgets/drawer.dart';
import 'package:my_warehouse/screens/settings_screen.dart';
import 'package:my_warehouse/screens/catalogs/warehouses/list_of_warehouses.dart';
import 'package:my_warehouse/screens/documents/inventory/inventory_screen.dart';

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
          'list_of_warehouses': (context) => const ListOfWarehouses(),
          'list_of_inventories': (context) => const ListofInventories(),

        });
  }
}

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['Створити продаж', 'Прийняти товар на склад', 'Інвентаризація товарів'];
    final List<int> colorCodes = <int>[100, 100, 100];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Склад компанії'),
        ),
        body:
        ListView(children: [
          const SizedBox(
            height: 5,
          ),

          Container(
            width: 1,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Створити продаж'),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Прийняти товар на склад'),
          ),
          ElevatedButton(onPressed: () {Navigator.pushNamed(context, 'list_of_inventories');}, child: Text('Інвентаризація товарів')),
        ]),



      // ListView.separated(
      //     padding: const EdgeInsets.all(8),
      //     itemCount: entries.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       return Container(
      //         height: 40,
      //         color: Colors.amber[colorCodes[index]],
      //         child: Center(child: Text(entries[index], style: TextStyle(fontSize: 15),)),
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index) => const Divider(),
      //   ),
        drawer: const MainDrawer(),
      ),
    );
  }
}