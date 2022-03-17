// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp_catalog/utils/routes.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Image.asset(
                "assets/images/login_page.jpg",
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 45.0,
              ),
              Text(
                "Welcome",
                style: GoogleFonts.lato(
                  fontStyle: FontStyle.normal,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    // ElevatedButton(

                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void setState(Null Function() param0) {}
}
