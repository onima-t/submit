import 'package:flutter/material.dart';
import 'Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    // final padding = MediaQuery.of(context).padding;
    // var maxHeight = size.height - padding.top - padding.bottom;
    return MaterialApp(
      home: HomePage()
    );
  }
}