import 'package:fiver_search/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FiverApp());
}
class FiverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
