import 'package:flutter/material.dart';
import 'package:myapp/loginPage.dart';

void main() {
  runApp(const MyApp());
}

// -- >> Dewi Safitri NPM 23.0504.0144
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // file pertama yang diload saat menjalankan flutter
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      // home dipasangkan dengan class file LoginPage
      home: Loginpage(),
    );
  }
}
