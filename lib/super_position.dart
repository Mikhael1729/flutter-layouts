import 'package:flutter/material.dart';
import 'package:flutter_layouts/column_button.dart';
import 'package:badge/badge.dart';

class SuperPosition extends StatefulWidget {
  @override
  _SuperPosition createState() => _SuperPosition();
}

class _SuperPosition extends State<SuperPosition> {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      alignment: const Alignment(0.0, 0.6),
      children: [
        Container (
          child: CircleAvatar(
            backgroundImage: AssetImage('images/hector_warhol.jpg'),
            radius: 100.0,
          ),
          width: 150.0,
          height: 150.0,
          padding: const EdgeInsets.all(3.0), // borde width
          decoration: new BoxDecoration(
            color: Colors.black, // border color
            shape: BoxShape.circle,
          ),
        ),  
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Mia B',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Super position'),
        actions: <Widget>[
          new Badge.left(
            value: '30',
            child:  IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // TODO...
              },
            ),
            positionTop: 7.0,
            positionRight: 4.0,
            textStyle: TextStyle(fontSize: 10.0),
          )
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                child: stack
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Mikhael Santos Fernández', 
                    style: new TextStyle(fontWeight: FontWeight.bold)
                  ),
                  Text(
                    'Currency: RD\$ 500.48'
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ColumnButton(icon: Icons.public, label: 'PUBLIC'),
                    ColumnButton(icon: Icons.lock, label: 'PRIVATE'),
                    ColumnButton(icon: Icons.business, label: 'QUANTITY')
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}