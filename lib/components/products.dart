import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
//  Dummy data
  var product_list = [
    {
      "name": "Natsu",
      "picture": "images/image00006.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Grey",
      "picture": "images/image00007.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Happy",
      "picture": "images/image00008.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Onicha",
      "picture": "images/image00009.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Osan",
      "picture": "images/image00010.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Pain",
      "picture": "images/image00001.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Zoro",
      "picture": "images/image00012.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Nami",
      "picture": "images/image00013.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Chopper",
      "picture": "images/image00014.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Sanji",
      "picture": "images/image00015.jpg",
      "old_price": 100,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_oldprice: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_oldprice;
  final product_price;

  Single_product(
      {this.product_name,
      this.product_picture,
      this.product_oldprice,
      this.product_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: product_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProductDetails(
                  product_detail_name: product_name,
                  product_detail_newprice: product_price,
                  product_detail_oldprice: product_oldprice,
                  product_detail_picture: product_picture
                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        product_name,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      title: Text(
                        "ksh $product_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(
                        "ksh $product_oldprice",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
