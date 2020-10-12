import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Product_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 95,
      "size": "M",
      "color": "Black",
      "quantity": 1
    },
    {
      "name": "Red Dress",
      "picture": "images/products/dress1.jpeg",
      "price": 78,
      "size": "L",
      "color": "Red",
      "quantity": 1
    },
    {
      "name": "Hill",
      "picture": "images/products/hills1.jpeg",
      "price": 54,
      "size": "L",
      "color": "Red",
      "quantity": 1
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Product_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_cart_product(
          cart_product_name: Product_on_the_cart[index]["name"],
          cart_product_color: Product_on_the_cart[index]["color"],
          cart_product_picture: Product_on_the_cart[index]["picture"],
          cart_product_price: Product_on_the_cart[index]["price"],
          cart_product_quantity: Product_on_the_cart[index]["quantity"],
          cart_product_size: Product_on_the_cart[index]["size"],
        );
      },
    );
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_product_name;
  final cart_product_picture;
  final cart_product_price;
  final cart_product_size;
  final cart_product_color;
  final cart_product_quantity;

  Single_cart_product({
    this.cart_product_name,
    this.cart_product_picture,
    this.cart_product_price,
    this.cart_product_size,
    this.cart_product_color,
    this.cart_product_quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.5,
      child: ListTile(
        leading: new Image.asset(cart_product_picture,width: 50,),

        title: new Text(cart_product_name),
        subtitle: new Column(
          children: <Widget>[
            // row inside the column
            new Row(
              children: <Widget>[
// ------------ size of the product--------
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    cart_product_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
// --------------- product color -----------
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: new Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_product_color,
                      style: TextStyle(color: Colors.red)),
                ),
              ],
            ),
//----------- product price ------------
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$ ${cart_product_price}",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
            )
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              new IconButton(icon: Icon(Icons.arrow_drop_up,size: 50,), onPressed: (){}),
              new Text("${cart_product_quantity}",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              ),
              new IconButton(icon: Icon(Icons.arrow_drop_down, size: 50,), onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
