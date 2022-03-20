import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
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
          color: Colors.lightGreenAccent,

          // ignore: prefer_const_constructors
          child: Text("Welcome to Pak Tour Guide & Services "),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(),
    );
  }
}
