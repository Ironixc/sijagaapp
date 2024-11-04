import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBFngg-6bNnLud_Yr09VN_w4MrM2JOLCnc",
      authDomain: "sijagaapp.firebaseapp.com",
      projectId: "sijagaapp",
      storageBucket: "sijagaapp.firebasestorage.app",
      messagingSenderId: "48889168391",
      appId: "1:48889168391:web:6edc8202c71847a28ea0a2",
      measurementId: "G-6MQ18W9VNF"
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiJaga App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}