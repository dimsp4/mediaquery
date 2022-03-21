import 'package:flutter/material.dart';
import './pages/home.dart';

void main() {
  runApp(Muter());
}

class Muter extends StatelessWidget {
  const Muter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
