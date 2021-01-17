import 'package:flutter/material.dart';
//import './sub_tab2.dart';

// void addNewPage1(BuildContext ctx) {
//   showModalBottomSheet(
//     isScrollControlled: true,
//     context: ctx,
//     builder: (_) {
//       return SubTab2();
//     },
//   );
// }

class ServDesc3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'História de Containers',
      home: Scaffold(
        body: SingleChildScrollView(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Nuno Machado'),
                  subtitle: Text('Tchurom montanhista'),
                ),
                Material(
                  child: GestureDetector(
                    //onTap: () => addNewPage1(context),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        'assets/images/marega.png',
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
