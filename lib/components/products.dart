import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list=[
    {
      "name":"Blazer",
      "picture":"images/products/blazer1.jpeg",
      "old_price": 120,
      "pirce":95,
    },
    {
      "name":"Red Dress",
      "picture":"images/products/dress1.jpeg",
      "old_price": 100,
      "pirce":50,
    },
    {
      "name":"Show",
      "picture":"images/products/hills1.jpeg",
      "old_price": 40,
      "pirce":25,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price,product_price;

  Single_product({
    this.product_name,
    this.product_old_price,
    this.product_picture,
    this.product_price,
});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
