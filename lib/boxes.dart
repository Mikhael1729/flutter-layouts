import 'package:flutter/material.dart';
import 'package:flutter_layouts/super_position.dart';

class TapboxA extends StatefulWidget {
  TapboxA({ Key key }) : super(key: key);

  @override 
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Boxes')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: _handleTap,
              child: Container(
                child: Center (
                  child: Text(
                    _active ? 'Active' : 'Inactive',
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                ),
                width: 200.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: _active ? Colors.lightGreen[700] : Colors.grey[600],
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute<void> (
                  builder: (BuildContext context) {
                    return SuperPosition();
                  }
                ));
              },
              child: Text('Next: Super position!'),
            )
          ],
        )
      ),
    );
  }

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }
}