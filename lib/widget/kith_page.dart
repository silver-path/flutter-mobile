import 'package:flutter/material.dart';
import '../service/kith_service.dart';
import '../data/court.dart';
import 'app_bar_headline.dart';
import 'kith_list.dart';

class KithPage extends StatefulWidget {
  @override
  KithPageState createState() => KithPageState();
}

class KithPageState extends State<KithPage> {
  final KithService service = KithService();
  final Court court = Court.seelie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarHeadline(text: 'Kiths', icon: Icons.portrait),
      ),
      body: FutureBuilder(
        future: service.fetch(court),
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return KithList(snapshot.data, court);
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}
