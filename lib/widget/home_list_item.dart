import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeListItem extends StatelessWidget {
  final String asset;
  final String text;
  final Widget icon;
  final Function onTap;

  HomeListItem({
    @required this.asset,
    @required this.text,
    this.icon,
    this.onTap,
  });

  Animation<double> _iconTurns;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap() : null,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: SvgPicture.asset(
                asset,
                width: 50.0,
              ),
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle,
            ),
            Spacer(),
            icon ?? Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
