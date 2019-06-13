import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_list_tile.dart';
import 'resource_page.dart';
import 'app_bar_headline.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarHeadline(text: 'Home', icon: Icons.home),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Welcome in Silver Path!',
                      style: Theme.of(context).textTheme.subtitle,
                    ),
                    Text(
                      'An app dedicated to Changeling:The Dreaming',
                      style: Theme.of(context).textTheme.body1,
                    ),
                    Spacer(),
                    SvgPicture.asset(
                      'assets/butterfly.svg',
                      width: 60.0,
                      height: 60.0,
                    ),
                    Spacer(),
                    Divider(
                      height: 1,
                    ),
                  ],
                )),
          ),
          Flexible(
            flex: 4,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                HomeListTile(
                  asset: 'assets/chronicle.svg',
                  text: 'Chronicles',
                  description: 'Start or continue your adventures',
                ),
                Divider(),
                HomeListTile(
                  asset: 'assets/encyclopedia.svg',
                  text: 'Resources',
                  description: 'Everything you need to know',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResourcePage()),
                    );
                  },
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
