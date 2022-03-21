import 'package:flutter/material.dart';
import 'package:myapp_catalog/widgets/travel_blog.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(right: 12),
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
        // ignore: prefer_const_constructors
        title: Text("Pak Tour Guide & Services"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            // ignore: prefer_const_constructors
            child: Text(
              'Travel Blog',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(flex: 2, child: TravelBlog()),
          // ignore: prefer_const_literals_to_create_immutables
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "View More",
                  style: TextStyle(fontSize: 16, color: Colors.greenAccent),
                ),
              ],
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(flex: 1, child: Placeholder()),
        ],
      ),
    );
  }
}
