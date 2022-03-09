import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Aquib";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Pak Tour Guide & Services"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days days of Flutters by $name "),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}
