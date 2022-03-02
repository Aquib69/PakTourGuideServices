import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Aquib";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pak Tour Guide & Services"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutters by $name "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
