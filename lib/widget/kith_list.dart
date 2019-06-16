import 'package:flutter/material.dart';
import '../widget/kith_container.dart';
import '../data/kith.dart';
import '../data/court.dart';

class KithList extends StatelessWidget {
  final List<Kith> kiths;
  final Court court;

  KithList(this.kiths, this.court);

  @override
  Widget build(BuildContext context) {
    print('build list with court ${court.toString()}');
    return ListView.builder(
        key: Key(court.toString()),
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(bottom: 48),
        itemCount: this.kiths.length,
        itemBuilder: (BuildContext context, int index) {
          print('trigger item builder for list with court ${court.toString()}');
          return KithContainer(
            key: Key(court.toString()),
            kith: kiths[index],
            court: court,
          );
        });
  }
}
