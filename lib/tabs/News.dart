import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: Center(
          child: Text('Noticias sobre tudo e mais alguma coisa!'),
        ),
      ),
    );
  }
}
