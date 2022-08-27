import 'package:flutter/material.dart';
import 'package:my_warehouse/screens/main_screen.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// void initFirebase() async{
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: FirebaseOptions(
//         apiKey: 'AIzaSyD6wQ8hkGBFtL-4FG7G0Etal0lXuCvZ774',
//         projectId: 'damwarehouse-69609',
//         appId: '1:22508645985:android:ab4f6b2a3623db307d0420',
//         messagingSenderId: "22508645985",
//       )
//   );
// }

void main() {
  // initFirebase();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainScreen());
}