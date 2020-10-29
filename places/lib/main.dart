import 'package:flutter/material.dart';
import 'package:places/ui/screen/sight_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SightScreen(),
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

  Type _runtimeType(){
    return context.runtimeType;
  }
}


