import 'package:flutter/material.dart';
import 'home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silver Path',
      theme: ThemeData(
        dividerColor: Colors.black45,
        appBarTheme: AppBarTheme(
          elevation: 2.0,
          color: Colors.yellow[200],
          iconTheme: IconThemeData(
            color: Colors.black45,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black45,
          size: 32.0,
        ),
        fontFamily: 'Montserrat',
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          subhead: TextStyle(
            fontSize: 48.0,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
            fontSize: 36.0,
          ),
          subtitle: TextStyle(
            fontSize: 24.0,
          ),
          body1: TextStyle(
            fontSize: 14.0,
          ),
          body2: TextStyle(
            fontSize: 12.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
