import 'package:flutter/material.dart';
import 'package:mobile/widget/court_button.dart';
import '../service/kith_service.dart';
import '../data/court.dart';
import 'app_bar_headline.dart';
import 'kith_list.dart';

class KithPage extends StatefulWidget {
  final Court court;
  KithPage({this.court = Court.seelie});
  @override
  KithPageState createState() => KithPageState(court: court);
}

class KithPageState extends State<KithPage> {
  final KithService service = KithService();
  Court court;
  KithPageState({@required this.court});

  onTap(Court court) {
    if (court != this.court) {
      setState(() {
        this.court = court;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarHeadline(text: 'Kiths', icon: Icons.portrait),
      ),
      body: FutureBuilder(
        future: service.kithains(),
        builder: (context, snapshot) {
          if (snapshot.hasData)
            return SafeArea(
              child: KithList(snapshot.data, court),
            );
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CourtButton(
                asset: 'assets/seelie.svg',
                selected: court == Court.seelie,
                onTap: () {
                  setState(() {
                    court = Court.seelie;
                  });
                },
              ),
              CourtButton(
                asset: 'assets/unseelie.svg',
                selected: court == Court.unseelie,
                onTap: () {
                  setState(() {
                    court = Court.unseelie;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
