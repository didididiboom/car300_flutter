import 'package:flutter/material.dart';

void main() {
  runApp(SaleCar());
}

class SaleCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: SaleCarState(),
    );
  }
}

class SaleCarState extends StatefulWidget {
  @override
  State<SaleCarState> createState() => _SaleCarState();
}

class _SaleCarState extends State<SaleCarState> {
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
