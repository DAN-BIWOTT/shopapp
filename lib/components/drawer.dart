import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //=========header=============//
          UserAccountsDrawerHeader(
            accountName: new Text('Sean'),
            accountEmail: Text('dankibiwott254@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.amber),
          ),
          // ========================body======================== //
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.person),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My orders'),
              leading: Icon(Icons.shopping_basket),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Categories'),
              leading: Icon(Icons.dashboard),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Favorites'),
              leading: Icon(Icons.favorite),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.lightBlueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
