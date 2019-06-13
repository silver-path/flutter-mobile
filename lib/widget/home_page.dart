import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_list_item.dart';
import 'home_list_items.dart';

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
            asset: 'assets/treasure.svg',
            text: 'Treasures',
            onTap: () {
              print('treasure pressed');
            },
          ),
          Divider(),
          CustomExpansionTile(
            asset: 'assets/dreaming.svg',
            text: 'The Dreaming',
            children: <Widget>[
              Divider(),
              HomeListItem(
                asset: 'assets/dreaming.svg',
                text: 'something',
                onTap: () {
                  print('something pressed');
                },
              ),
              Divider(),
              HomeListItem(
                asset: 'assets/dreaming.svg',
                text: 'something else',
                onTap: () {
                  print('something else pressed');
                },
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
