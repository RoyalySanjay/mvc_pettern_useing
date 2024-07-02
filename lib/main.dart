import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_apps/views/sreenAuth/main_screen.dart';
import 'package:mvc_apps/views/sreenAuth/home_screen.dart';
import 'package:mvc_apps/views/sreenAuth/splace_screen.dart';
void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
