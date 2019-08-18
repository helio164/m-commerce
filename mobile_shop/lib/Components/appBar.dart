import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget {
  @override
  _AppBarCustomState createState() => _AppBarCustomState();
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    Widget my_appbar = new Container(
        child: new AppBar(
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
    ));
    return my_appbar;
  }
}
