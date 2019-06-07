import 'package:flutter/material.dart';
import '../data/Kith.dart';
class KithCard extends Card {
  final LightKith kith;
  KithCard(this.kith);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromRGBO(255, 250, 210, 0.75),
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
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    this.kith.name,
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Meath"
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0, left: 12.0, right: 12.0),
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
                  maxLines: 10,
                  overflow: TextOverflow.fade,
                  style: TextStyle(
                    fontStyle: FontStyle.italic
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}