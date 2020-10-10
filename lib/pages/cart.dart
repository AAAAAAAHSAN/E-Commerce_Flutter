import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: new AppBar(
      backgroundColor: Colors.red,
      title: Text('Shopping Cart'),
      actions: <Widget>[
        new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {}),

      ],
    ),);
  }
}
