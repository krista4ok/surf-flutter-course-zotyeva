import 'package:flutter/material.dart';

class SightScreen extends StatefulWidget {
  @override
  _SightScreenState createState() => _SightScreenState();
}

class _SightScreenState extends State<SightScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.green,
          title: Text(
            'Интересные места',
            style: TextStyle(fontSize: 22),
          ),
        ),
        drawer: Container(
          color: Colors.red,
          width: 250,
        ),
      ),
    );
  }
}
