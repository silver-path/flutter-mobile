import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'kith_card_front.dart';
import 'kith_card_back.dart';
import '../data/kith.dart';
import '../data/court.dart';

class KithContainer extends StatelessWidget {
  final Kith kith;
  final Court court;

  KithContainer({key, @required this.kith, @required this.court})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: FlipCard(
        front: KithCardFront(kith: kith, court: court),
        back: KithCardBack(kith: kith, court: court),
      ),
    );
  }
}
