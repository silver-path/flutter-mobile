import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourtButton extends StatefulWidget {
  String asset;
  bool selected;
  Function onTap;
  CourtButton(
      {@required this.asset, @required this.onTap, this.selected = false});
  @override
  _CourtButtonState createState() => _CourtButtonState();
}

class _CourtButtonState extends State<CourtButton> {
  ShapeDecoration getDecoration() => widget.selected
      ? ShapeDecoration(
          color: Color.fromRGBO(
            Colors.lightBlue.red,
            Colors.lightBlue.green,
            Colors.lightBlue.blue,
            0.3,
          ),
          shape: CircleBorder(),
        )
      : null;
  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: getDecoration(),
      child: IconButton(
        iconSize: 48.0,
        icon: SvgPicture.asset(
          widget.asset,
        ),
        onPressed: widget.onTap,
      ),
    );
  }
}
