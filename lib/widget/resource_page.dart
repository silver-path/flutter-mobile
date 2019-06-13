import 'package:flutter/material.dart';
import 'home_list_tile.dart';
import 'home_list_expansion_tile.dart';
import 'app_bar_headline.dart';

class ResourcePage extends StatefulWidget {
  @override
  ResourcePageState createState() => ResourcePageState();
}

class ResourcePageState extends State<ResourcePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarHeadline(text: 'Resources', icon: Icons.book),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          HomeListTile(
            asset: 'assets/kith.svg',
            text: 'Kiths',
            description: 'Kithains, Gallains, Thallains, etc',
            onTap: () {
              print('kith pressed');
            },
          ),
          Divider(),
          HomeListTile(
            asset: 'assets/treasure.svg',
            text: 'Treasures',
            description: 'Inspiration for Treasures and Dross',
            onTap: () {
              print('treasure pressed');
            },
          ),
          Divider(),
          HomeListExpansionTile(
            asset: 'assets/dreaming.svg',
            text: 'The Dreaming',
            children: <Widget>[
              Divider(),
              HomeListTile(
                asset: 'assets/freehold.svg',
                text: 'Freeholds',
                description: 'Enchanted places',
                onTap: () {
                  print('freehold pressed');
                },
              ),
              Divider(),
              HomeListTile(
                asset: 'assets/glen.svg',
                text: 'Glens',
                description: 'Hidden enchanted havens',
                onTap: () {
                  print('glen pressed');
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
