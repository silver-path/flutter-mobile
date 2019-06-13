import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeListTile extends StatelessWidget {
  final String asset;
  final String text;
  final String description;
  final Widget icon;
  final Function onTap;

  HomeListTile({
    @required this.asset,
    @required this.text,
    this.description,
    this.icon,
    this.onTap,
  });

  Widget buildText(BuildContext context) {
    if (description == null)
      return Text(
        text,
        style: Theme.of(context).textTheme.subtitle,
      );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle,
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.body2,
        ),
      ],
    );
  }

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
                height: 50.0,
              ),
            ),
            buildText(context),
            Spacer(),
            icon ?? Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
