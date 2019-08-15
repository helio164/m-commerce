import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Drawer(
          child: new ListView(
            children: <Widget>[
              //header
              new UserAccountsDrawerHeader(
                accountName: Text("Helio"),
                accountEmail: Text("helio@mail.pt"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person,color: Colors.white,)
                  ),
                ),
                decoration: new BoxDecoration(
                    color: Colors.red
                ),
              ),
              //body
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Home Page"),
                  leading: Icon(Icons.home),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("My Account"),
                  leading: Icon(Icons.person),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("My Orders"),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Categories"),
                  leading: Icon(Icons.dashboard),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Favorite"),
                  leading: Icon(Icons.favorite),
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(Icons.settings, color: Colors.blue,),
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help, color: Colors.green,),
                ),
              ),
            ],
          ),
        )
    );
  }
}
