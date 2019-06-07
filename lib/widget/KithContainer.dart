import 'package:flutter/material.dart';
import '../data/Kith.dart';
import './KithCard.dart';

class KithContainer extends StatelessWidget {
  final LightKith kith;

  KithContainer(this.kith);

  final double margin = 24.0;
  final double padding = 24.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (margin * 2),
      margin: EdgeInsets.all(margin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.network(this.kith.image).image,
          fit: BoxFit.none,
          alignment: Alignment(kith.position.x, kith.position.y)
        ),
        borderRadius: BorderRadius.all(Radius.circular(48.0)),
        color: Colors.amber,
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: KithCard(this.kith),
      )
    );
  }
}