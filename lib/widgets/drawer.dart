import 'package:flutter/material.dart';
//import 'package:my_warehouse/screens/settings_screen.dart';

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
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                child: const Text("Налаштування підключення", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                onPressed: () {
                  Navigator.pushNamed(context, 'settings');
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: ElevatedButton(
                child: const Text("Нормативно-довідкова інформація", style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                onPressed: () {
                  Navigator.pushNamed(context, 'catalogs');
                }),
          ),
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
