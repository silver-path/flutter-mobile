import 'package:flutter/material.dart';
import '../widget/KithContainer.dart';
import '../data/Kith.dart';
class KithList extends StatelessWidget {
  final List<LightKith> kiths;
  KithList(this.kiths);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: this.kiths.length,
      itemBuilder: (BuildContext context, int index) {
        return KithContainer(this.kiths[index]);
      }
    );
  }
}