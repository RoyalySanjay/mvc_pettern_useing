import 'package:flutter/material.dart';
import 'package:mvc_apps/views/utils/styles/theme/lighttheme.dart';

import '../utils/styles/theme/darktheme.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    bool _isDark = true;
    return MaterialApp(
      theme: _isDark==false?darkmode:lightmode,
      home: Scaffold(
        appBar: AppBar(
          title: Text("xcvgbhnjm"),
          actions: [
            Switch(
              value: _isDark,
              onChanged: (value) {
                setState(() {
                  _isDark = value;
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [

          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
