import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.pink,
//       child: Text('hey', style: TextStyle(color: Colors.white),),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_set = new Container(
    height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
  );

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('Ahsan E commerce'),
        actions: <Widget> [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})

        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget> [
            // header
            new UserAccountsDrawerHeader(
              accountName: Text('Ahsan Ullah'),
              accountEmail: Text("ahsan.cse.cu@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home , color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person , color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.business , color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard , color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite , color: Colors.red,),
              ),
            ),

            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.green,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.info , color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          image_set
        ],
      ),
    );
  }
}
