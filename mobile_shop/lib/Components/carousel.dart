import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


class CarouselCustom extends StatefulWidget {
  @override
  _CarouselCustomState createState() => _CarouselCustomState();
}

class _CarouselCustomState extends State<CarouselCustom> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          //AssetImage('images/m2.jpg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotBgColor: Colors.transparent,
        indicatorBgPadding: 4.0,

      ),
    );
    return image_carousel;
  }
}
