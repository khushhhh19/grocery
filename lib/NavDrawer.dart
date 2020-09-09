import 'dart:ui';

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'ShopBy.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Khushboo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25
              ),
            ),
          ),

          Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.shopping_basket,
                      color: Colors.white,),
                    Text('My Orders',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.credit_card,
                      color: Colors.white,),
                    Text('My Card',
                      style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_on,
                      color: Colors.white,),
                    Text('My Address',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            )
            },
          ),
          ListTile(
            leading: Icon(Icons.layers),
            title: Text('Shop by Category'),
            onTap: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ShopBy()),
            )
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Account'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help Center'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.power_settings_new),
            title: Text('Logout'),
            onTap: () => {},
          ),

        ],
      ),
    );
  }

}