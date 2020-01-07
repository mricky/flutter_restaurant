import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     
      home: MyHomePage(),
    );
  }
}
var newZealandImage =
    'https://images.unsplash.com/photo-1492531622965-b556ff0402df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var parisImage =
    'https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1307&q=80';
var auroraImage =
    'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

var berlinImage =
    'https://images.unsplash.com/photo-1528728329032-2972f65dfb3f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';
var amsterdamImage =
    'https://images.unsplash.com/photo-1524047934617-cb782c24e5f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80';

var gradient1 = [Color(0xFFdc5f89), Color(0xFFeea694)];
var gradient2 = [Color(0xFF269b70), Color(0xFF7ce6a9)];
var gradient3 = [Color(0xFF526fe2), Color(0xFF8351e5)];

var images = [
  newZealandImage,
  parisImage,
  auroraImage,
  berlinImage,
  amsterdamImage
];

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Color(0xff1e1359),
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor: Color(0xFF382f6e)
          ),
          child: BottomNavigationBar(
            fixedColor: Colors.pink,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(title: Container(), icon: Icon(Icons.home)),
              BottomNavigationBarItem(title: Container(), icon: Icon(Icons.place, color: Colors.grey.withOpacity(0.6))),
              BottomNavigationBarItem(title: Container(), icon: Icon(Icons.person, color: Colors.grey.withOpacity(0.6))),
            ],
          ),
        ),
         body: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            TopSection(),
            //SizedBox(height: 12.0),
            //MainCarousel(),
            //SecondHeader(),
            //SizedBox(height: 16.0),
            //SecondCarousel()
          ],
        ));
  
  }
  
}

class SecondHeader extends StatelessWidget {
  const SecondHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text('Popular Tour',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22.0)),
    );
  }
}

class TourCard extends StatelessWidget {
  final name;
  final image;
  TourCard(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 120.0,
        width: 200.0,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black54, BlendMode.darken)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            SizedBox(height: 4.0,),
            Text(
              'USD 1200 | 5 Days',
              style: TextStyle(
                color: Colors.white70,

              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainCarousel extends StatelessWidget {
  const MainCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        viewportFraction: 0.95,
        aspectRatio: 2.0 ,
        items: images.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 160.0,
                        width: double.infinity,
                        child: Image.network(i, fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'New Zealand',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                              Icon(
                                Icons.star_border,
                                color: Colors.yellow,
                                size: 14.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'USD 5.250',
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                '(620 Review)',
                                style: TextStyle(color: Colors.white54),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ));
            },
          );
        }).toList(),
        height: 238.0,
        autoPlay: false);
  }
}

class TopSection extends StatelessWidget {
  const TopSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Travel',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            color: Color(0xFF382f6e),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 8.0,
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search destination',
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        border: InputBorder.none),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 32.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GradientButton('Italy', gradient1),
                GradientButton('Rome', gradient2),
                GradientButton('French', gradient3),
                GradientButton('London', gradient1),
              ],
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            'Destination',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class GradientButton extends StatelessWidget {
  final name;
  final colors;
  GradientButton(this.name, this.colors);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft)),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0),
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}