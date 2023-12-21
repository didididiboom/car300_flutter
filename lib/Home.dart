import 'package:flutter/material.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: MyHomeState(),
    );
  }
}

class MyHomeState extends StatefulWidget {
  @override
  State<MyHomeState> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomeState> {
  List guide = [
    {'id': 1, 'label': '估值定价', 'image': 'https://assets.che300.com/feimg/m/homepage/home_icon_sale@3x.png'},
    {'id': 2, 'label': '买二手车', 'image': 'https://assets.che300.com/feimg/m/homepage/home_icon_buy@3x.png'},
    {'id': 3, 'label': '车型识别', 'image': 'https://assets.che300.com/feimg/m/homepage/home_icon_shi@3x.png'},
    {'id': 4, 'label': '历史车况', 'image': 'https://assets.che300.com/feimg/m/homepage/home_icon_cha@3x.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(children: [
        FadeInImage(
            placeholder: AssetImage('images/wallhaven-jxd1ww'),
            image: NetworkImage(
                'https://assets.che300.com/feimg/m/banner/banner_m@3x.png')),
        Column(
          children: [
            Row(
              children: [
                
              ],
            )
          ],
        )
      ]),
    );
  }
}
