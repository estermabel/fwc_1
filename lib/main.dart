import 'package:flutter/material.dart';
import 'package:fwc_1/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FWC#1',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
