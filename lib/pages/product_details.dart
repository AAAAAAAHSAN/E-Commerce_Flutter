import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_details_name;
  final product_details_picture;
  final product_details_old_price, product_details_price;
  ProductDetails({
    this.product_details_name,
    this.product_details_picture,
    this.product_details_old_price,
    this.product_details_price
});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Ahsan E commerce'),
        actions: <Widget> [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_details_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_details_name,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),),

                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.product_details_old_price}",
                        style: TextStyle(color: Colors.grey,
                        decoration: TextDecoration.lineThrough),
                        )
                      ),
                      Expanded(
                          child: new Text("\$${widget.product_details_price}",
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //color: Colors.black54,
          ),

          // -------------the first button
          Row(
            children: <Widget>[
              // ---------- the size button
              Expanded(
                child: MaterialButton(onPressed: (){},
                color: Colors.white,
                textColor: Colors.grey,
                  elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
                ),
                
              ),
              // ---------- the color button
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Color"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),

              ),
              // ---------- the quantity button
              Expanded(
                child: MaterialButton(onPressed: (){},
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qnty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 2.0,
                  child: new Text("Buy Now"),
                ),
              ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.red,onPressed: (){},
              ),
              new IconButton(icon: Icon(Icons.favorite_border), color: Colors.red,onPressed: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}
