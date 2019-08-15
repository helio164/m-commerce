import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 19.00,
      "price": 17.00,
    },
    {
      "name": "Dress 1",
      "picture": "images/products/dress1.jpeg",
      "old_price": 36.00,
      "price": 31.00,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 59.00,
      "price": 37.00,
    },
    {
      "name": "Dress 2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 19.00,
      "price": 15.00,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 9.00,
      "price": 7.00,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_oldprice: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      alignment: Alignment.center,
      child: ListTile(
        title: Image.asset(prod_picture),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(prod_name)
        ),

      ),
    );
  }
}
