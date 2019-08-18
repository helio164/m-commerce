import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my imports
//import 'package:mobile_shop/Components/appBar.dart';
import 'package:mobile_shop/Components/menu.dart';
import 'package:mobile_shop/Components/carousel.dart';
import 'package:mobile_shop/Components/horizontalList.dart';
import 'package:mobile_shop/Components/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("m-commerce"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: new Menu(),
      body: new ListView(
        children: <Widget>[
          CarouselCustom(),
          new Padding(padding: const EdgeInsets.all(8.0),
              child: new Text('Categories'),),
          //Horizontal ListView
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Recent Products'),),
          //GridView
          Container(
            height: 200.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
