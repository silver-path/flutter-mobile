import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import '../data/Kith.dart';
import './KithCard.dart';

class KithContainer extends StatefulWidget {
  final LightKith kith;

  KithContainer(this.kith);

  @override
  _KithContainerState createState() => _KithContainerState(kith);
}

class _KithContainerState extends State<KithContainer>
    with TickerProviderStateMixin {
  final LightKith kith;
  AnimationController controller;
  CurvedAnimation animation;
  Animation<double> move;

  _KithContainerState(this.kith);

  final double margin = 24.0;
  final double padding = 24.0;
  bool repeated;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticIn);
    move = Tween(begin: 1.0, end: 0.85).animate(controller);
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
      width: MediaQuery.of(context).size.width - (margin * 2),
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AdvancedNetworkImage(
              kith.image,
              useDiskCache: true,
              cacheRule: CacheRule(maxAge: const Duration(days: 7)),
            ),
            fit: BoxFit.none,
            alignment: Alignment(kith.position.x, kith.position.y)),
        borderRadius: BorderRadius.all(Radius.circular(48.0)),
        color: Colors.amber,
      ),
//      child: Align(alignment: Alignment(0.0, 0.8), child: KithCard(kith),),
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
