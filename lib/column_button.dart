import 'package:flutter/material.dart';

class ColumnButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ColumnButton({ @required this.icon, @required this.label });

  @override
  Widget build(BuildContext context){
    var color = Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}