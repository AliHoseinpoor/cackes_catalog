import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: new Text(
          'Fine quality',
          style: new TextStyle(
            color: Colors.black,
            shadows: <Shadow>[
              new Shadow(blurRadius: 7, color: Colors.grey),
              new Shadow(blurRadius: 2, color: Colors.amber),
            ],
          ),
        ),
        leading: new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: new ListView(
        padding: const EdgeInsets.only(top: 20),
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(12),
                height: 250,
                child: new Row(
                  children: <Widget>[
                    new Stack(
                      children: <Widget>[
                        new Container(
                          height: 230,
                          width: size.width - size.width / 3,
                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(10),
                            image: new DecorationImage(
                                image: new AssetImage('assets/images/b1.jpg'), fit: BoxFit.cover),
                          ),
                        ),
                        new Positioned(
                          left: 15,
                          top: 130,
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Text(
                                'Burger One',
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    '\$88',
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  new SizedBox(
                                    width: 10,
                                  ),
                                  new Text(
                                    '\$198',
                                    style: new TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 18,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.white,
                                      decorationStyle: TextDecorationStyle.double,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    new SizedBox(
                      width: 8,
                    ),
                    new Column(
                      children: <Widget>[
                        new Material(
                          borderRadius: new BorderRadius.circular(8),
                          elevation: 3,
                          child: new Container(
                            //mishe - 32 chon 2 ta 12 ta paddin dare va yek 8 width sized box has
                            width: size.width / 3 - 32,
                            height: 60,
                            decoration:
                                new BoxDecoration(borderRadius: new BorderRadius.circular(8)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 28,
                                ),
                                new Text(
                                  '368',
                                  style: new TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 22,
                        ),
                        new Material(
                          borderRadius: new BorderRadius.circular(8),
                          elevation: 3,
                          child: new Container(
                            //mishe - 32 chon 2 ta 12 ta paddin dare va yek 8 width sized box has
                            width: size.width / 3 - 32,
                            height: 60,
                            decoration:
                                new BoxDecoration(borderRadius: new BorderRadius.circular(8)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.chat_bubble,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                                new Text(
                                  '76',
                                  style: new TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        new SizedBox(
                          height: 22,
                        ),
                        new Material(
                          borderRadius: new BorderRadius.circular(8),
                          elevation: 3,
                          child: new Container(
                            //mishe - 32 chon 2 ta 12 ta paddin dare va yek 8 width sized box has
                            width: size.width / 3 - 32,
                            height: 60,
                            decoration:
                                new BoxDecoration(borderRadius: new BorderRadius.circular(8)),
                            child: new Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.arrow_forward,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                                new Text(
                                  '18',
                                  style: new TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(14),
                child: new Text(
                  'Commodity',
                  style: new TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          new SizedBox(
            height: 12,
          ),
          new GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            //in childAspectRatio har chi koochik tar bashe in card ha bozorgtar mishe va har chi bishtar bashe koochik tar
            childAspectRatio: 0.85,
            shrinkWrap: true,
            children: <Widget>[
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/b1.jpg', 23, 12, 1),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/b2.jpg', 23, 12, 2),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/b3.jpg', 23, 12, 3),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/b4.jpeg', 23, 12, 4),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/a1.jpg', 23, 12, 5),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/a2.jpg', 23, 12, 6),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/a3.jpg', 23, 12, 7),
              _buildFoodCard('Ali', 'Hoseinpoor', 'assets/images/a4.jpg', 23, 12, 8),
            ],
          ),
          new SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Widget _buildFoodCard(
      String name, String origin, String image, int likes, int comment, int index) {
    return new Padding(
      padding: index.isEven ? EdgeInsets.only(right: 15) : EdgeInsets.only(left: 15),
      child: new Container(
        height: 400,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10),
          border: Border.all(
            color: Colors.grey.withOpacity(0.2),
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
        child: new Stack(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 125,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover),
                    borderRadius: new BorderRadius.only(
                      topLeft: new Radius.circular(10),
                      topRight: new Radius.circular(10),
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 5, top: 5),
                  child: new Text(
                    name,
                    style: new TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: new Text(
                    origin,
                    style: new TextStyle(fontFamily: 'Quicksand', fontSize: 12, color: Colors.grey),
                  ),
                ),
                new SizedBox(
                  height: 3,
                ),
                new Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        children: <Widget>[
                          new Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          new SizedBox(
                            width: 4,
                          ),
                          new Text(
                            likes.toString(),
                            style: new TextStyle(
                                fontFamily: 'Quicksand', fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      new SizedBox(
                        width: 15,
                      ),
                      new Row(
                        children: <Widget>[
                          new Icon(
                            Icons.chat_bubble,
                            size: 20,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          new SizedBox(
                            width: 4,
                          ),
                          new Text(
                            comment.toString(),
                            style: new TextStyle(
                                fontFamily: 'Quicksand', fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            new Positioned(
              top: 105,
              right: 10,
              child: new Container(
                width: 40,
                height: 40,
                decoration: new BoxDecoration(
                    color: Colors.amber,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[new BoxShadow(color: Colors.grey, blurRadius: 6)]),
                child: new Center(
                  child: new Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
