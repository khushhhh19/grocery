import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/widgets.dart';
import 'ShopBy.dart';
import 'NavDrawer.dart';
import 'Cart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: height,
      color: Colors.white,
        child: Scaffold(
          drawer: NavDrawer(),
            appBar: AppBar(

              titleSpacing: 0.0,

              actions: <Widget>[

                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
                  },
                  icon: Icon(Icons.shopping_cart),
                )

              ],

              bottom: PreferredSize(
                preferredSize: Size(height*0.1, width*0.1),
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Container(
                        height: height/18,
                        width: width*0.97,

                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: Icon(Icons.search,
                                  color: Colors.black54),
                              hintText: 'Search Brand or Product...',
                              hintStyle: TextStyle(
                                  color: Colors.black12
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              title: Text('Grocery'),
            ),

            body: ListView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    height: height*0.23,
                    width: width,
                    child: Carousel(
                      autoplay: false,
                      images: [
                        Image.asset('images/tomato.jpg', fit: BoxFit.fitWidth,),
                        Image.asset('images/capsicum.jpg', fit: BoxFit.fitWidth,),
                        Image.asset('images/cauliflower.jpeg', fit: BoxFit.fitWidth,),
                      ],
                      dotSize: MediaQuery.of(context).size.aspectRatio*8,
                      dotSpacing: MediaQuery.of(context).size.aspectRatio*20,
                      dotColor: Colors.white,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.white70.withOpacity(0),
                    )
                ),
                ),

              Container(
                  color: Colors.white10,
                  height: height/15,
                  width: width,
                  padding: MediaQuery.of(context).padding*0.5,
                  child: Text('Shop by category',
                    textScaleFactor: MediaQuery.of(context).textScaleFactor*1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopBy()),
                    );
                  },
                  child: Container(
                    color: Colors.white,
                    height: height*0.7,
                    width: width,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: <Widget>[
                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/vege.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Fruits & Vegetables',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage('images/cake.jpg'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Bakery Dairy Products',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/masala.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Foodgrain, Oil, Masala',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/drinks.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Beverages & Drinks',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/brand.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Branded food products',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/beauty.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Beauty products',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/egg.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Fish, Meat & Eggs',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/house.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Household products',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Card(
                          elevation: 0.0,
                          color: Colors.white,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(15),
                                width: width/3,
                                height: height/5,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/grument.jpg'),
                                        fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.bottomCenter,
                                child: Text('Gourmet & World food',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.aspectRatio*20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
        ),
    );
  }
}