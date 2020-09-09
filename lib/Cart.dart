import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/HomePage.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        elevation: 0.0,
        titleSpacing: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            icon: Icon(Icons.clear),
          )
        ],
      ),

      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            children: <Widget>[

              Card(
                  elevation: 10,
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const ListTile(
                            leading: Icon(Icons.album, size: 40),
                            trailing: Icon(Icons.delete),
                            title: Text('Fresh Tomatoes'),
                          subtitle: Text('Rs. 40'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Text('-',
                                style: TextStyle(
                                color: Colors.white
                              ),
                              ),
                            ),
                            Text('1 kg'),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Text('+',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),

              Card(
                  elevation: 10,
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album, size: 40),
                          trailing: Icon(Icons.delete),
                          title: Text('Fresh Capsicum'),
                          subtitle: Text('Rs. 30'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Text('-',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Text('1 kg'),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Text('+',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),

              Card(
                  elevation: 10,
                  child: Container(
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album, size: 40),
                          trailing: Icon(Icons.delete),
                          title: Text('Fresh Cauliflower'),
                          subtitle: Text('Rs. 15'),
                        ),
                        ButtonBar(
                          children: <Widget>[
                            RaisedButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Text('-',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                            Text('1 kg'),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.green,
                              child: Text('+',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
              ),

            ],
          ),
        ),
      ),

    );
  }

}