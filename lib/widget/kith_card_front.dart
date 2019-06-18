import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import '../data/kith.dart';
import '../data/court.dart';

class KithCardFront extends StatelessWidget {
  final Kith kith;
  final Court court;

  KithCardFront({@required this.kith, @required this.court});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 1.0,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .5,
              child: TransitionToImage(
                image: AdvancedNetworkImage(
                  kith.display(court).url,
                  useDiskCache: true,
                  cacheRule: CacheRule(
                    maxAge: const Duration(seconds: 1),
                  ),
                ),
                fit: BoxFit.fitHeight,
                alignment: Alignment.topCenter,
                enableRefresh: true,
                key: Key(court.toString()),
                placeholder: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.error),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text('could not load image')
                    ],
                  ),
                ),
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
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    kith.unveiling,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
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
    );
  }
}
