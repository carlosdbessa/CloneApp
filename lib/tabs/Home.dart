import 'package:flutter/material.dart';

// void main() {
//   runApp(Home());
// }

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Text('MI CASA ES TU CASA'),
        ),
      ),
    );
  }
}
