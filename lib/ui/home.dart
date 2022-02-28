import 'package:avis/services/theme_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: const [
          Text(
            "Theme Data",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}

_appBar() {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        print('tapped');
        ThemeService().switchTheme();
      },
      child: const Icon(Icons.nightlight_round, size: 20),
    ),
    actions: const [
      Icon(Icons.person, size: 20),
      SizedBox(width: 20),
    ],
  );
}
