import 'package:flutter/material.dart';

class Horizontal_listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/categories/1.png',
            image_caption: 'Shirts',
          ),
          Category(
            image_location: 'images/categories/2.jpg',
            image_caption: 'Trousers',
          ),
          Category(
            image_location: 'images/categories/3.jpg',
            image_caption: 'Sports',
          ),
          Category(
            image_location: 'images/categories/4.jpeg',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/categories/5.png',
            image_caption: 'Lingerie',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100.0, height: 80.0),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption),
            )
          ),
        ),
      ),
    );
  }
}
