import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Image_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/image00001.jpg'),
          AssetImage('images/image00002.jpg'),
          AssetImage('images/image00003.jpg'),
          AssetImage('images/image00004.jpg'),
          AssetImage('images/image00005.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.grey,
        indicatorBgPadding: 3.0,
      ),
    );
  }
}
