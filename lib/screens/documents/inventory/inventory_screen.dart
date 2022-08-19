import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void initFirebase() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}



class ListofInventories extends StatefulWidget {
  const ListofInventories({Key? key}) : super(key: key);

  @override
  State<ListofInventories> createState() => _ListofInventoriesState();
}

class _ListofInventoriesState extends State<ListofInventories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        appBar: AppBar(
          title: const Text('Документи інвентаризації'),
        ),
        body:
        ListView(
          children: [

                    ],
        ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                try{
                FirebaseFirestore.instance.collection('listInventories').add({'name': 'doc Inv', 'id': 1});}
                on Exception catch (_) {print('AAAAAAAAAAAAAAAAAAAAAAAAA');
                throw Exception("Error on server");
                }
              },
              // label: Text('Hi'),
              child: const Icon(Icons.add)
    )
    )
    );
  }
}
