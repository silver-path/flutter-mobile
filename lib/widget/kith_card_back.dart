import 'package:flutter/material.dart';
import '../data/kith.dart';
import '../data/court.dart';

class KithCardBack extends StatelessWidget {
  final Kith kith;
  final Court court;

  KithCardBack({@required this.kith, @required this.court});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.network(
                      this.kith.icon,
                      fit: BoxFit.fitHeight,
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        this.kith.name,
                        style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Meath"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(kith.unveiling),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(kith.description),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Overview',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(kith.overview),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
