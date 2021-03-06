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
          'catalogs' : (context) => const Catalogs(),
        });
  }
}

class Screen0 extends StatelessWidget {
  const Screen0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: const Text('Склад компанії'),
      ),
      body: Container(

      ),
      drawer: const MainDrawer(),
    );
  }
}