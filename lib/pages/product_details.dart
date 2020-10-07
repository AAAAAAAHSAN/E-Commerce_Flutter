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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Size"),
                      content: new Text("Choose your preferred size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context); // this function closes the window
                        },
                        child: new Text("Close"),)
                      ],
                    );
                  });
                },
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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                    return new AlertDialog(
                      title: new Text("Color"),
                      content: new Text("Choose your preferred color !"),
                      actions: <Widget> [
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                          child: new Text("Close"),),
                      ],
                    );
                  });
                },
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
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                      builder: (context){
                        return new AlertDialog(
                          title: new Text("Quantity"),
                          content: new Text("Choose your preferred Quantity !"),
                          actions: <Widget> [
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("Close"),),
                          ],
                        );
                      });
                },
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

          // buy now button from here
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
          ),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("skdfj skdfjdksf dsfkdjsfk dsfkjdskf sdfkjdsflksd sdrjweior dfkfjodig dfmdsifu ekjrei dmfdj sfds "
                "sdfkjdskfjsdkfjkds kfjdksf "
                "dkfjdskf dskfjierjew  dkfsdkf ksdfskldf sdfjdlf klsdfjdifew rewkrewkdfsi sdfmdskfjsdkf fdskfadfkl;aepofew edfkdsf dkfl"
                "dslkfjsldkfjsdif dfjdlskfj sd "),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5, 5, 5),
              child: new Text("Product Name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5),
              child: new Text(widget.product_details_name),),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5, 5, 5),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),
              ),
              // we have to implement band name future
              Padding(padding: EdgeInsets.all(5),
                child: new Text("New Brand"),),
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5, 5, 5),
                child: new Text("Product condition", style: TextStyle(color: Colors.grey),),
              ),
              // we need to add product condition future
              Padding(padding: EdgeInsets.all(5),
                child: new Text("New"),),
            ],
          ),

        ],
      ),
    );
  }
}
