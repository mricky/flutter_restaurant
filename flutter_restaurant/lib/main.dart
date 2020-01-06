import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restauran Mobile App',
      home: MyHomePage(),
    );
  }
}
// IMAGES
var meatImage =
    'https://images.unsplash.com/photo-1532597311687-5c2dc87fff52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var foodImage =
    'https://images.unsplash.com/photo-1520218508822-998633d997e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';

var burgerImage =
    'https://images.unsplash.com/photo-1534790566855-4cb788d389ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var chickenImage =
    'https://images.unsplash.com/photo-1532550907401-a500c9a57435?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

// COLORS
var textYellow = Color(0xFFf6c24d);
var iconYellow = Color(0xFFf4bf47);

var green = Color(0xFF4caf6a);
var greenLight = Color(0xFFd8ebde);

var red = Color(0xFFf36169);
var redLight = Color(0xFFf2dcdf);

var blue = Color(0xFF398bcf);
var blueLight = Color(0xFFc1dbee);

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: MyActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: MyBottomNavBar(),  
        body: Container(
          child: ListView(
            children: <Widget>[
                SizedBox(height: 16.0),
                MyAppBar(),
                SizedBox(height: 16.0),
                FoodListView(),
                SizedBox(height: 16.0),
                SelectedTypeSection(),
                SizedBox(height: 16.0),
                MenuItemsList()
            ],
          ),
      ),
    );
  }
}
class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.grid_on,
              color: Colors.grey,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('Location', style: TextStyle(color: Colors.black54),),
                Text(
                  'West Java, Bandung',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
    );
  }
}
class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0),)
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(width: 100.0),
              Column(
                children: <Widget>[
                  Icon(Icons.shop, color: Colors.black45),
                  Text('Wishlist', style: TextStyle(fontSize: 12.0),)
                ],
              ),
              Column(children: <Widget>[
                Icon(Icons.shopping_cart, color: Colors.black45,),
                Text('Cart', style: TextStyle(fontSize: 12.0),)
              ],)
            ],
          ),
        ),
      ),
      
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: iconYellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(FontAwesomeIcons.book),
            SizedBox(height: 4.0,),
            Text('Menu', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),)
          ],),
        ),
      ),
    );
  }
}
//FoodListView(),
//SelectedTypeSection(),
//MenuItemsList()
class FoodListView extends StatelessWidget {
    const FoodListView({
      Key key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          height: 160.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ItemCard(),
              ItemCard(),
              ItemCard(),
              ItemCard(),
            ],
          ),
        ),
      );
    }
  }

  class ItemCard extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 160.0,
          width: 300.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(meatImage), fit : BoxFit.cover
            )
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 160.0,
                width: 300.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.1), Colors.black]
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                   Spacer(),
                   Text(
                     '25 % OFF',
                     style : TextStyle(
                     color: textYellow,
                     fontWeight: FontWeight.bold,
                     fontSize: 24.0,
                     letterSpacing: 1.1,
                     )
                   ),
                   Text(
                     'ON FIRST ORDERS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        letterSpacing: 1.1
                      )  
                   )
                  ],
                ),
              )
            ],
          ),
        ),
        
      );
    }
  }

class SelectedTypeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 92.0,
            width: 110.0,
            color: greenLight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.footballBall,
                  color: green,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Sports store',
                  style: TextStyle(color: green, fontWeight: FontWeight.w500),
                ),
                
              ],
            ),
          ),
          Container(
            height: 92.0,
            width: 110.0,
            color: redLight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.solidClock,
                  color: red,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Book a Table',
                  style: TextStyle(color: red, fontWeight: FontWeight.w500),
                ),
                
              ],
            ),
          ),
           Container(
            height: 92.0,
            width: 110.0,
            color: redLight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.solidLaugh,
                  color: blue,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  'Catering',
                  style: TextStyle(color: blue, fontWeight: FontWeight.w500),
                ),
                
              ],
            ),
          ),
        ],),
      
    );
  }
}
