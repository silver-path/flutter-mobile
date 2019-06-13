import 'package:flutter/material.dart';
import 'home_list_item.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.home),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          HomeListItem(
            asset: 'assets/dreaming.svg',
            text: 'The Dreaming',
            onPressed: () {
              print('dreaming pressed');
            },
          ),
          Divider(
            color: Colors.black38,
          ),
          HomeListItem(
            asset: 'assets/treasure.svg',
            text: 'Treasures',
            onPressed: () {
              print('treasure pressed');
            },
          ),
          Divider(
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
