import 'package:flutter/material.dart';
import 'home_list_tile.dart';
import 'home_list_expansion_tile.dart';
import 'app_bar_headline.dart';
import 'kith_page.dart';

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
          HomeListExpansionTile(
            asset: 'assets/butterfly.svg',
            text: 'Kiths',
            description: 'All kind of faeries',
            children: <Widget>[
              HomeListTile(
                asset: 'assets/kith.svg',
                text: 'Kithains',
                description: 'Kithains, Gallains',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KithPage()),
                  );
                },
              ),
            ],
          ),
          Divider(),
          HomeListTile(
            asset: 'assets/treasure.svg',
            text: 'Treasures',
            description: 'Inspiration for Treasures and Dross',
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
              ),
              Divider(),
              HomeListTile(
                asset: 'assets/glen.svg',
                text: 'Glens',
                description: 'Hidden enchanted havens',
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
