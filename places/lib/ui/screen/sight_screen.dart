import 'package:flutter/material.dart';
import 'package:places/ui/res/string.dart';

/// Виджет отображения главного экрана.
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
          title: RichText(
            text: TextSpan(
                text: interesting,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: places,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  )
                ]),
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
