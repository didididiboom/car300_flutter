import 'package:flutter/material.dart';

void main() {
  runApp(Eval());
}

class Eval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: EvalState(),
    );
  }
}

class EvalState extends StatefulWidget {
  @override
  State<EvalState> createState() => _EvalState();
}

class _EvalState extends State<EvalState> {
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
