// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:myapp_catalog/widgets/detail.dart';

import '../model/travel.dart';

class TravelBlog extends StatelessWidget {
  final _list = Travel.generateTravelBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: _list.length,
        controller: _pageCtrl,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(
                  travel: travel,
                );
              }));
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      travel.url,
                      width: 600,
                      height: 600,
                      // width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.name,
                              style:
                                  // ignore: prefer_const_constructors
                                  TextStyle(
                                      color: Colors.white, fontSize: 20))),
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.location,
                              style:
                                  // ignore: prefer_const_constructors
                                  TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 30,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        color: Color.fromARGB(255, 0, 0, 0),
                        borderRadius: BorderRadius.circular(30)),
                    child:
                        // ignore: prefer_const_constructors
                        Icon(Icons.arrow_forward,
                            color: Colors.white, size: 30),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
