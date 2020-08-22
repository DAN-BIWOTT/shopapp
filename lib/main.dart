import 'package:flutter/material.dart';
import 'package:flutter_app/components/drawer.dart';
import 'package:flutter_app/components/horizontal_listview.dart';
import 'package:flutter_app/components/image_carousel.dart';
import 'package:flutter_app/components/products.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///////////////////////////APP BAR//////////////////////////////////////////////////////////
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Shop App'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      ////////////////////////////////DRAWER///////////////////////////////////////////////////////
      drawer: drawer(),
      body: ListView(
        children: <Widget>[
          Image_carousel(),
//          ======padding from home carousel=========
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categories'),
          ),
//          =========Horizontal list==================
          Horizontal_listview(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Recent Products'),
          ),
//          ========Recent Products===============
        Container(
          height: 320.0,
          child: Products(),
        ),
        ],
      ),
    );
  }
}
