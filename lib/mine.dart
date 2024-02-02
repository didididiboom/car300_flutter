import 'package:car300_flutter/components/Mine/tabs.dart';
import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import './json/mineJson.dart';

void main() {
  runApp(const Mine());
}

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '我的页面',
      theme: ThemeData.light(),
      home: const MineState(),
    );
  }
}

class MineState extends StatefulWidget {
  const MineState({super.key});

  @override
  State<MineState> createState() => _MineState();
}

class _MineState extends State<MineState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: null,
      body: CustomScrollView(slivers: <Widget>[
        SliverToBoxAdapter(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Row(
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
                  const Row(
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
                    padding: const EdgeInsets.only(
                        top: 4, right: 8, bottom: 4, left: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(248, 223, 208, 1),
                          Color.fromRGBO(252, 236, 219, 1),
                          Color.fromRGBO(252, 209, 171, 1),
                        ])),
                    child: const Row(
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
              // 滚动列表
              Container(
                  margin: const EdgeInsets.only(top: 17),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8)),
                  height: 89, // 设置高度
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(right: 20),
                      itemBuilder: (content, index) {
                        return Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage(mineCenter[index]['url']),
                                  width: 40,
                                  height: 40,
                                ),
                                Text(
                                  mineCenter[index]['label'],
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                )
                              ],
                            ));
                      },
                      itemCount: mineCenter.length)),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 17),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(8)),
                    height: 116, // 设置高度
                    child: Column(
                      children: [
                        // 车辆图标
                        const Row(children: [
                          Image(
                            image: AssetImage('images/car_demo.png'),
                            width: 60,
                            height: 40,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '奥迪A4L奥迪A4L奥迪...',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF333333),
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image(
                            image: AssetImage('images/edit.png'),
                            width: 18,
                            height: 18,
                          ),
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  '23.11 - 24.15',
                                  style: TextStyle(
                                      color: Color(0xFFFF6600),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27),
                                ),
                                Text(
                                  '万',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFFF6600),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image(
                                  image:
                                      AssetImage('images/arrow_ccc_6_10.png'),
                                  width: 8,
                                  height: 14,
                                )
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffff6600),
                                  foregroundColor: const Color(0XFFFFFFFF),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  minimumSize: const Size(98, 36),
                                ),
                                onPressed: () {
                                  print(111);
                                },
                                child: const Text('高价卖车'))
                          ],
                        )
                      ],
                    ),
                    // 买车记录按钮
                  ),
                  const Positioned(
                    top: 25,
                    right: 15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '卖车记录',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xFF9e9e9e)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Image(
                          image: AssetImage('images/arrow_999_5_8.png'),
                          width: 5,
                          height: 8,
                        )
                      ],
                    ),
                  )
                ],
              ),
              // tab
              Container(
                  margin: const EdgeInsets.only(top: 17),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 15),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8)),
                  height: 200, // 设置高度
                  child: const TabBarMine()),
            ],
          ),
        ))
      ]),
    );
  }
}
