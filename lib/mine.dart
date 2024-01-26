import 'package:flutter/material.dart';
import './json/mineJson.dart';

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
      backgroundColor: Color(0xFFF5F5F5),
      appBar: null,
      body: CustomScrollView(
        slivers: <Widget>[
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.only(top: 4, right: 8, bottom: 4, left: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(248, 223, 208, 1),
                              Color.fromRGBO(252, 236, 219, 1),
                              Color.fromRGBO(252, 209, 171, 1),
                            ])),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '专享权益',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(158, 100, 66, 1)),
                            ),
                            SizedBox(width: 4), // 添加间距
                            Image(
                              image: AssetImage('images/arrow_ccc_6_10.png'),
                              width: 6,
                              height: 10,
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 17),
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(8))),
                    height: 89, // 设置高度
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (content, index) {
                        return Column(
                          children: [
                            Image(
                              image: AssetImage(mineCenter[index]['url']),
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              mineCenter[index]['label'],
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12),
                            )
                          ],
                        );
                      },
                      itemCount: mineCenter.length
                    )
                  )
                  // Container(child:
                  //   SliverList.builder(
                  //     itemCount: mineCenter.length,
                  //     itemBuilder: (context, index) {
                  //       print(context);
                  //       print(index);
                  //     },
                  //   ),
                  // )
                ],
              ),
            )
          )
        ]),
    );
  }
}
