import 'package:flutter/material.dart';
import 'package:my_warehouse/screens/catalogs/clients/list_of_clients.dart';
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
          'list_of_clients': (context) => const ListOfClients(),

        });
  }
}

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
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

          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, 'list_of_inventories');},
                child: Text('Інвентаризація товарів')),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Прийняти товар на склад'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Створити продаж'),
            ),
          ),
        ]),
        drawer: const MainDrawer(),
      ),
    );
  }
}