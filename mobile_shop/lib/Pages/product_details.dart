import 'package:flutter/material.dart';

import 'package:mobile_shop/Components/menu.dart';

class ProductDetails extends StatefulWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  ProductDetails({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
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
      body: new ListView(
        //padding: EdgeInsets.all(),
        children: <Widget>[
          new Container(
            height: 300.0,
            color: Colors.black,
            child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget.prod_picture),
                ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text("${widget.prod_oldprice} €",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.lineThrough,
                          ),
                          )
                      ),
                      Expanded(
                          child: new Text("${widget.prod_price} €",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red, fontSize: 30.0),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            
            children: <Widget>[
              //          ===== the Size button =====
              Expanded(
                child: MaterialButton(
                  elevation: 0.2,
                    onPressed: (){
                      showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Size"),
                          content: new Text("Choose the size"),
                          actions: <Widget>[
                            new MaterialButton(
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                              child: new Text("Close"),
                            )
                          ],
                        );
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Size"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )
                ),
              ),

              //          ===== the Color button =====
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Color"),
                              content: new Text("Choose the color"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color "),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )
                ),
              ),

              //          ===== the Quantity button =====
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return new AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the quantity"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: (){
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Qty"),
                        ),
                        Expanded(
                          child: new Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              //          ===== the Buy button =====
              Expanded(
                child: MaterialButton(
                    elevation: 0.2,
                    onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    child: new Text("Buy now")
                ),
              ),
              new IconButton(
                icon: Icon(Icons.add_shopping_cart),
                color: Colors.red,
                onPressed: (){},
              ),
              new IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.red,

                onPressed: (){},
              ),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          ),
          new Row(
            children: <Widget>[
              
            ],
          ),
        ],
      ),
    );
  }
}
