import 'package:flutter/material.dart';
import 'package:wagmi/UI/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wagmi',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
