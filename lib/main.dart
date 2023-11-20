import 'package:flutter/material.dart';
import 'package:uasproject/sellerloginscreen.dart';
import 'package:uasproject/sellerregisterscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seller Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SellerLoginScreen(),
        '/register': (context) => SellerRegisterScreen(),
      },
    );
  }
}