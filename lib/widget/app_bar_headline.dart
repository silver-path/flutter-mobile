import 'package:flutter/material.dart';

class AppBarHeadline extends StatelessWidget {
  final String text;
  final IconData icon;

  AppBarHeadline({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon),
        Container(
          width: 10.0,
        ),
        Text(
          text,
          style: Theme.of(context).appBarTheme.textTheme.headline,
        ),
      ],
    );
  }
}
