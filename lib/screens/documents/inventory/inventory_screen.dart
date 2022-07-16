import 'package:flutter/material.dart';

class ListofInventories extends StatefulWidget {
  const ListofInventories({Key? key}) : super(key: key);

  @override
  State<ListofInventories> createState() => _ListofInventoriesState();
}

class _ListofInventoriesState extends State<ListofInventories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Документи інвентаризації'),
      ),

    ));
  }
}
