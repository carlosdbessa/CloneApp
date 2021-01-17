import 'package:flutter/material.dart';
import 'package:massage_app/tabs/Agenda.dart';
import './globals.dart';
import './BottomBar.dart';
import 'tabs/Home.dart';
import 'tabs/login_page.dart';
import 'tabs/News.dart';
import 'tabs/team.dart';
import 'tabs/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        accentColor: Colors.amber,
        fontFamily: 'QuickSand',
        textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(
                fontFamily: 'QuickSand',
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'QuickSand',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
        ),
      ),
      home: MyHomePage(title: 'OS TCHURÕES'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _pageOptions = [
    Home(),
    News(),
    Agenda(),
    Team(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            brightness: Brightness.dark,
            toolbarHeight: 80,
            backgroundColor: primaryColor,
            flexibleSpace: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 20,
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Container(
                        width: 20,
                        child:
                            new Icon(Icons.tune, size: 28, color: Colors.white),
                      ),
                    ],
                  ),
                  TabBar(
                    indicatorColor: secondaryColor,
                    indicatorWeight: 3,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    tabs: [
                      Tab(
                        text: 'ATLETAS',
                      ),
                      Tab(
                        text: 'ADMINISTRADOR',
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
          ),
          body: _pageOptions[_selectedIndex],

          // TabBarView(
          //   //controller: _tabController,
          //   children: [Athelete(), Admin()],
          //  ),
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.insert_drive_file_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_rounded),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.group),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded),
                  //icon: Icon(Icons.filter),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: primaryColor,
              unselectedItemColor: secondaryColor,
              //onTap: () => addNewPage1(context),
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ),
      ),
    );
  }
}
