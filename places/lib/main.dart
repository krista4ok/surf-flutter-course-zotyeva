import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MySecondWidget(),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _counterBuild();
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  int counter = 0;

  void _counterBuild() {
    counter++;
    print(counter);
  }
}

class MySecondWidget extends StatefulWidget {
  @override
  _MySecondWidgetState createState() => _MySecondWidgetState();
}

class _MySecondWidgetState extends State<MySecondWidget> {
  @override
  Widget build(BuildContext context) {
    _counterBuild();
    return Container(
      child: Center(
        child: Text('Hello!'),
      ),
    );
  }

  int counter = 0;

  void _counterBuild() {
    counter++;
    print(counter);
  }
}
