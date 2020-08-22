import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_newprice;
  final product_detail_oldprice;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_newprice,
      this.product_detail_oldprice,
      this.product_detail_picture});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 250.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white10,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Ksh ${widget.product_detail_oldprice}',
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Ksh ${widget.product_detail_newprice}',
                          style: TextStyle(color: Colors.green,
                          fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row()
        ],
      ),
    );
  }
}
