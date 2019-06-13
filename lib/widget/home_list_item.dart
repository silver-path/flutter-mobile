import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeListItem extends StatelessWidget {
  final String asset;
  final String text;
  final Function onPressed;

  HomeListItem(
      {@required this.asset, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: SvgPicture.asset(
                asset,
                width: 100.0,
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle,
            ),
            Spacer(),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
