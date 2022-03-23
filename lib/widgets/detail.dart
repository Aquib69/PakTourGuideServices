import 'package:flutter/material.dart';
import 'package:myapp_catalog/model/travel.dart';

// ignore: use_key_in_widget_constructors
class DetailPage extends StatelessWidget {
  final Travel travel;
  final double expandedHeight = 300;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  DetailPage({required this.travel});
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        // ignore: prefer_const_constructors
        body: Stack(
      children: [
        CustomScrollView(
          slivers: [Widget_buildSilverHead()],
        )
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  Widget_buildSilverHead() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
      travel: travel,
      expandedHeight: expandedHeight,
    ));
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Travel travel;
  final double expandedHeight;
  DetailSliverDelegate({
    required this.travel,
    required this.expandedHeight,
  });
  // ignore: empty_constructor_bodies
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Opacity(
          opacity: 0.8,
          child: Image.asset(travel.url,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover),
        )
      ],
    );
  }

  @override
  // ignore: todo
  // TODO: implement maxExtent
  double get maxExtent => expandedHeight;

  @override
  // ignore: todo
  // TODO: implement minExtent
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // ignore: todo
    // TODO: implement shouldRebuild
    return true;
  }
}
