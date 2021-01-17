import 'package:flutter/material.dart';
import 'package:massage_app/Administrador.dart';
import '../globals.dart';

class Team extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'EQUIPA PORTUGAL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        // appBar: AppBar(
        //   brightness: Brightness.dark,
        //   toolbarHeight: 80,
        //   backgroundColor: primaryColor,
        //   flexibleSpace: SafeArea(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Row(
        //           mainAxisAlignment: MainAxisAlignment.spaceAround,
        //           children: [
        //             Container(
        //               width: 20,
        //             ),
        //             Text(
        //               widget.title,
        //               style: TextStyle(
        //                   fontSize: 16,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.white),
        //             ),
        //             Container(
        //               width: 20,
        //               child:
        //                   new Icon(Icons.tune, size: 28, color: Colors.white),
        //             ),
        //           ],
        //         ),
        //         TabBar(
        //           controller: _tabController,
        //           indicatorColor: redColor,
        //           indicatorWeight: 3,
        //           labelStyle:
        //               TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        //           tabs: [
        //             Tab(
        //               text: 'ATLETAS',
        //             ),
        //             Tab(
        //               text: 'OFICIAIS',
        //             )
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        //   // Here we take the value from the MyHomePage object that was created by
        //   // the App.build method, and use it to set our appbar title.
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 5,
          ),
          AthleteCard('Catarina Ribeiro', 'Atletismo', 'nature.png'),
          AthleteCard('Cláudia Pereira', 'Atletismo', 'waiting.png'),
          AdminCard('Carlos Bessa', 'Atletismo', 'profile.png')

          // AthleteCard()
        ],
      ),
    ));
  }
}

class AthleteCard extends StatelessWidget {
  final String athleteName;
  final String athletePic;
  final String athleteSport;

  AthleteCard(this.athleteName, this.athleteSport, this.athletePic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Stack(
        children: [
          Container(
            height: 450,
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.7, 1],
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/' + athletePic),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          Container(
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Container(
                      height: 75,
                      width: 75,
                      child: Image(
                          image: AssetImage('assets/images/tokyo2020.png'))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 20),
                      child: Text(
                        athleteSport,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, left: 20),
                      child: Text(
                        athleteName,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
