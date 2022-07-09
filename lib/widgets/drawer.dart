import 'package:flutter/material.dart';
//import 'package:my_warehouse/screens/screen1.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          /*const UserAccountsDrawerHeader(
            accountName: Text('Адміністратор'),
            accountEmail: Text('admin@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('/assets/images/drawer/logo.png'),
            ),
          ),*/

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: ElevatedButton(
                child: const Text("Налаштування підключення", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                onPressed: () {
                  Navigator.pushNamed(context, 'settings');
                }),
          ),
          ElevatedButton(
              child: const Text("Нормативно-довідкова інформація", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
              onPressed: () {
                Navigator.pushNamed(context, 'settings');
              }),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('Hello'),
          //   ],
          // )
        ],
      ),
    );
  }
}
