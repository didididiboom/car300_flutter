import 'package:flutter/material.dart';

void main() {
  runApp(CarDetail());
}

class CarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '车源详情', theme: ThemeData.light(), home: CarDetailState());
  }
}

class CarDetailState extends StatefulWidget {
  @override
  State<CarDetailState> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetailState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muzico'),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation',
          onPressed: () => debugPrint('Navigation button is pressed.'),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
          ),
          IconButton(
            icon: Icon(Icons.more),
            tooltip: 'More',
            onPressed: () => debugPrint('More button is pressed.'),
          ),
        ],
      ),
      body: Text('111'),
    );
  }
}
