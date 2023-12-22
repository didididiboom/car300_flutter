import 'package:flutter/material.dart';

void main() {
  runApp(Mine());
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: MineState(),
    );
  }
}

class MineState extends StatefulWidget {
  @override
  State<MineState> createState() => _MineState();
}

class _MineState extends State<MineState> {
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
