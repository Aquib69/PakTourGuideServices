import 'package:flutter/material.dart';
import 'package:myapp_catalog/widgets/detail.dart';

import '../model/travel.dart';

// ignore: use_key_in_widget_constructors
class MostPopular extends StatelessWidget {
  final _list = Travel.generateMostPopular();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(travel: travel,);
              }));
            },
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child:
                        Image.asset(travel.url, width: 140, fit: BoxFit.cover)),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.location,
                              style:
                                  // ignore: prefer_const_constructors
                                  TextStyle(
                                      color: Colors.white, fontSize: 15))),
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.name,
                              style:
                                  // ignore: prefer_const_constructors
                                  TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        // ignore: prefer_const_constructors
        separatorBuilder: (_, index) => SizedBox(
              width: 15,
            ),
        itemCount: _list.length);
  }
}
