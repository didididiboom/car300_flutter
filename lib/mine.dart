import 'package:flutter/material.dart';

void main() {
  runApp(Mine());
}

class Mine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的页面',
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
      body: CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Image(
                    image: AssetImage('images/icon_shezhi_20.png'),
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image(
                    image: AssetImage('images/icon_dianhua_20.png'),
                    width: 20,
                    height: 20,
                  )
                ],
              ),
              Row(
                children: [
                  Image(
                    image: AssetImage('images/logo.png'),
                    width: 46,
                    height: 46,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'che300',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          '专享权益111',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(158, 100, 66, 1)),
                        ),
                        Image(image: AssetImage('iamges/arrow_ccc_6_10.png'))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ))
      ]),
    );
  }
}
