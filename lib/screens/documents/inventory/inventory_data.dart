import 'package:flutter/material.dart';
//import 'package:my_warehouse/widgets/db/sql_helper.dart';

class InventoryData extends StatefulWidget {
  const InventoryData({Key? key}) : super(key: key);

  @override
  State<InventoryData> createState() => _InventoryDataState();
}

class _InventoryDataState extends State<InventoryData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Дані інвентаризації')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'DocName',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      color: Colors.white,
                      child: const Text(
                        'DateTime',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: (
                //       Column(
                //          crossAxisAlignment: CrossAxisAlignment.start,
                //          children: [
                //            // Row(children: [
                //            //   TextField(decoration: InputDecoration(hintText: 'Назва:')),
                //            //   Text('Дата створення')
                //            // ],)
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Expanded(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Text('Кількість записів: 10000'),
                  ))
                ],
              ),
            ),
            Expanded(child: 
              ListView(
                children: const [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              )
            ),

          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),),
    );
  }
}
