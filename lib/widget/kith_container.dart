import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import '../data/kith.dart';
import '../data/court.dart';
import '../core/size_config.dart';

class KithContainer extends StatefulWidget {
  final Court court;
  final Kith kith;

  KithContainer({@required this.kith, @required this.court, Key key})
      : super(key: key);

  @override
  _KithContainerState createState() {
    print('create container state');
    return _KithContainerState(kith, court);
  }
}

class _KithContainerState extends State<KithContainer>
    with TickerProviderStateMixin {
  final Court court;
  final Kith kith;
  AnimationController controller;
  CurvedAnimation animation;
  Animation<double> move;

  String orientation;

  _KithContainerState(this.kith, this.court);

  final double margin = 24.0;
  final double padding = 24.0;
  bool repeated;

  @override
  void initState() {
    super.initState();
    print('init container state');

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticIn);
    move = Tween(begin: 0.8, end: 0.5).animate(controller);
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
    });
    controller.forward();
  }

  Widget portrait(BuildContext context) {
    return Container(
      key: Key(kith.court.toString()),
      width: MediaQuery.of(context).size.width - (margin * 2),
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AdvancedNetworkImage(
            kith.display(court).url,
            useDiskCache: true,
            cacheRule: CacheRule(maxAge: const Duration(days: 7)),
          ),
          fit: BoxFit.scaleDown,
        ),
        borderRadius: BorderRadius.all(Radius.circular(48.0)),
        color: Colors.white,
      ),
      child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Align(
              child: Card(
                elevation: 0,
                color: Color.fromRGBO(255, 250, 210, 0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Row(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          bottom: 12.0, left: 12.0, right: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.9),
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            kith.description,
                            textScaleFactor: 1.2,
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              alignment: Alignment(0.0, move.value * 1.0),
            );
          }),
    );
  }

  Widget landscape(BuildContext context) {
    return Container(
      key: Key(kith.court.toString()),
      width: MediaQuery.of(context).size.width - (margin * 2),
      child: Row(
        children: <Widget>[
          Container(
            width: (MediaQuery.of(context).size.width - (margin * 2)) / 3,
            margin: EdgeInsets.all(margin),
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AdvancedNetworkImage(
                  kith.display(court).url,
                  useDiskCache: true,
                  cacheRule: CacheRule(maxAge: const Duration(days: 7)),
                ),
                fit: BoxFit.scaleDown,
              ),
              borderRadius: BorderRadius.all(Radius.circular(48.0)),
              color: Colors.white,
            ),
          ),
          Flexible(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
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
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    kith.description,
                    textScaleFactor: 1.2,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizeConfig.isPortrait(context)
        ? portrait(context)
        : landscape(context);
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
