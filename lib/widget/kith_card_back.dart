import 'package:flutter/material.dart';
import '../data/kith.dart';
import '../data/court.dart';
import '../core/string_helper.dart';
import 'history_list_expansion_tile.dart';

class KithCardBack extends StatelessWidget {
  final Kith kith;
  final Court court;

  KithCardBack({@required this.kith, @required this.court});

  HistoryListExpansionTile buildHistory(BuildContext context, Kith kith) {
    HistoryListExpansionTile history = HistoryListExpansionTile(
      text: 'History',
      children: <Widget>[],
    );
    if (kith.history != null) {
      for (var details in kith.history) {
        history.children.add(HistoryListExpansionTile(
          text: StringHelper.capitalize(details.title),
          childrenStyle: Theme.of(context).textTheme.display1,
          children: <Widget>[
            Text(details.content, style: Theme.of(context).textTheme.body1),
          ],
        ));
      }
    } else
      history.children
          .add(Text('...', style: Theme.of(context).textTheme.body1));
    return history;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 1.0,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                    this.kith.icon,
                    fit: BoxFit.fitHeight,
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      this.kith.name,
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                kith.unveiling,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Description',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                kith.description ?? '...',
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Affinity',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                kith.affinity ?? '?',
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Overview',
                style: Theme.of(context).textTheme.display1,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                kith.overview ?? '...',
              ),
              SizedBox(
                height: 10.0,
              ),
              buildHistory(context, kith),
            ],
          ),
        ),
      ),
    );
  }
}
