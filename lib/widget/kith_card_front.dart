import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import '../data/kith.dart';
import '../data/court.dart';

class KithCardFront extends StatelessWidget {
  final Kith kith;
  final Court court;

  KithCardFront({@required this.kith, @required this.court});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Image(
                  image: AdvancedNetworkImage(
                    kith.display(court).url,
                    useDiskCache: true,
                    cacheRule: CacheRule(maxAge: const Duration(days: 7)),
                  ),
                  height: MediaQuery.of(context).size.height / 2,
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.topCenter,
                ),
              ),
              Divider(
                height: 1.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
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
                    Text(
                      kith.description,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'click for more details',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
