import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp_catalog/pages/home_page.dart';
import 'package:myapp_catalog/pages/local_guider.dart';
import 'package:myapp_catalog/pages/login_page.dart';
import 'package:myapp_catalog/pages/sign_up.dart';
import 'package:myapp_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        primarySwatch: Colors.green,
      ),

      // ignore: prefer_const_literals_to_create_immutables
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        // ignore: prefer_const_constructors
        MyRoutes.signupRoute: ((context) => Signup()),
        // ignore: prefer_const_constructors
        MyRoutes.localguiderRoute: (context) => LocalGuider(),
      },
    );
  }
}
