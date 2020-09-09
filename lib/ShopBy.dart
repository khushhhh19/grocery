import 'package:flutter/material.dart';

class ShopBy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop by category'),
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: <Widget>[

          Column(
            children: <Widget>[

              GestureDetector(
                onTap: () {
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 60,
                  width: 150,
                  color: Colors.white,
                  child: Text('Fruits & Vegetables'),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Bakery & Dairy Products'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Foodgrains, Oil & Masala'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Beverages & Drinks'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Beauty Products'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Household Products'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Fish, meat & Eggs'),
              ),

              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: 150,
                color: Colors.white,
                child: Text('Gourmet & World Food'),
              ),

            ],
          ),

        ],
      ),
    );
  }

}