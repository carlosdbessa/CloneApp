import 'package:flutter/material.dart';
//import 'infoAthelete.dart';
import 'BottomBar.dart';

void addNewPage1(BuildContext ctx) {
  showBottomSheet(
    //isScrollControlled: true,
    context: ctx,
    builder: (_) {
      return BottomBar();
    },
  );
}

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'História de Containers',
      home: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
            ),
            AdminCard('Carlos Bessa', 'Atletismo', 'profile.png'),

            // AthleteCard()
          ],
        ),
      )),
    );
  }
}

class AdminCard extends StatelessWidget {
  final String athleteName;
  final String athletePic;
  final String athleteSport;

  AdminCard(this.athleteName, this.athleteSport, this.athletePic);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => addNewPage1(context),
            child: Container(
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
