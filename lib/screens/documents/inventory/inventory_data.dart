import 'package:flutter/material.dart';
import 'package:my_warehouse/widgets/db/sql_helper.dart';

class InventoryData extends StatefulWidget {
  const InventoryData({Key? key}) : super(key: key);

  @override
  State<InventoryData> createState() => _InventoryDataState();
}

class _InventoryDataState extends State<InventoryData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Scaffold(
          appBar: AppBar(
            title: Text('Дані інвентаризації')),
            body: Column(children:[ Text('Hi'),
              Container(
                height: 10,
                color: Colors.cyan,
              ),
              Text('Hello')
            ]

          ),
        )
    );
  }
}
