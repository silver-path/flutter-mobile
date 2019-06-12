import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/widget/kith_list.dart';
import './service/kith_service.dart';
import './data/court.dart';

void main() => runApp(SilverPathApp());

class SilverPathApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Silver Path',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue),
      home: HomePage(title: 'Silver Path'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  KithService service = KithService();
  Court court = Court.seelie;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    print('build main');
    return Scaffold(
      appBar: AppBar(
        elevation: 8.0,
        title: Text(
          widget.title,
          style: TextStyle(
            fontFamily: 'Meath',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: service.fetch(court),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData)
            return KithList(snapshot.data, court);
          else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
      floatingActionButton: Container(
        width: 150.0,
        height: 150.0,
        child: IconButton(
          icon: court == Court.seelie
              ? SvgPicture.asset('assets/seelie.svg')
              : court == Court.unseelie
                  ? SvgPicture.asset('assets/unseelie.svg')
                  : SvgPicture.asset('assets/shadow.svg'),
          onPressed: () {
            setState(() {
              court = court == Court.seelie
                  ? Court.unseelie
                  : court == Court.unseelie ? Court.shadow : Court.seelie;
            });
          },
        ),
      ),
    );
  }
}
