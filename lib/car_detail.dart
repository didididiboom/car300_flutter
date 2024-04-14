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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        elevation: 0.0,
        leading: Image(image: AssetImage('images/car_detail/back.png'), width: 5, height: 5,),
        actions: <Widget>[
         Image(image: AssetImage('images/car_detail/back.png'), width: 5, height: 5,),
         Image(image: AssetImage('images/car_detail/back.png'), width: 5, height: 5,),
         Image(image: AssetImage('images/car_detail/back.png'), width: 5, height: 5,),
         Image(image: AssetImage('images/car_detail/back.png'), width: 5, height: 5,),
        ],
      ),
      body: Text('111'),
    );
  }
}
