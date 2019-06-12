import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import '../data/Kith.dart';
import '../data/Court.dart';
import './KithCard.dart';

class KithContainer extends StatefulWidget {
  final Court court;
  final Kith kith;

  KithContainer({ @required this.kith, @required this.court, Key key }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
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
              child: KithCard(kith),
              alignment: Alignment(0.0, move.value * 1.0),
            );
          }),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
