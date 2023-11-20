import 'package:flutter/material.dart';
import 'package:uasproject/sellerloginscreen.dart';

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
      home: SellerLoginScreen(),
    );
  }
}