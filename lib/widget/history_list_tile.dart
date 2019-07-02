import 'package:flutter/material.dart';

class HistoryListTile extends StatelessWidget {
  final String text;
  final Widget icon;
  final TextStyle style;
  final Function onTap;

  HistoryListTile({
    @required this.text,
    this.icon,
    this.style,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap != null ? onTap() : null,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
        ),
        child: Row(
          children: <Widget>[
            Text(
              text,
              style: onTap != null
                  ? style ?? Theme.of(context).textTheme.subtitle
                  : (style ?? Theme.of(context).textTheme.subtitle)
                      .copyWith(color: Colors.grey),
            ),
            Spacer(),
            icon ?? Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
