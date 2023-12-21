import 'package:flutter/material.dart';

void main() {
  runApp(BuyCar());
}

class BuyCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: BuyCarState(),
    );
  }
}

class BuyCarState extends StatefulWidget {
  @override
  State<BuyCarState> createState() => _BuyCarState();
}

class _BuyCarState extends State<BuyCarState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(children: [
        FadeInImage(
            placeholder: AssetImage('images/wallhaven-jxd1ww'),
            image: NetworkImage(
                'https://assets.che300.com/feimg/m/banner/banner_m@3x.png')),
            Column(children: [
              Row(children: [

              ],)
            ],)
      ]),
    );
  }
}
