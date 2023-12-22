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
    {
      'id': 1,
      'label': '估值定价',
      'url': 'https://assets.che300.com/feimg/m/homepage/home_icon_sale@3x.png'
    },
    {
      'id': 2,
      'label': '买二手车',
      'url': 'https://assets.che300.com/feimg/m/homepage/home_icon_buy@3x.png'
    },
    {
      'id': 3,
      'label': '车型识别',
      'url': 'https://assets.che300.com/feimg/m/homepage/home_icon_shi@3x.png'
    },
    {
      'id': 4,
      'label': '历史车况',
      'url': 'https://assets.che300.com/feimg/m/homepage/home_icon_cha@3x.png'
    },
  ];

  List guideTwo = [
    {'id': 1, 'label': '我要卖车', 'tip': '多平台比价 谁高卖谁', 'icon': ''},
    {'id': 2, 'label': '车辆估价', 'tip': '买车卖车 查行情价格', 'icon': ''}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // 设置页面背景色为 #F5F5F5
      appBar: null,
      body: Column(children: [
        Image(
            image: NetworkImage(
                'https://assets.che300.com/feimg/m/banner/banner_m@3x.png')),
        Container(
            height: 173,
            width: double.infinity, // 设置为父级宽度的最大值
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(15), // 容器内补白
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, childAspectRatio: 1.0),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image(
                          image: NetworkImage(guide[index]['url']),
                          width: 48,
                          height: 48,
                        ),
                        Text(
                          guide[index]['label'],
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        )
                      ],
                    );
                  },
                  itemCount: guide.length,
                  shrinkWrap: true, // 设置为 true
                  physics: NeverScrollableScrollPhysics(), // 禁用滚动行为
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 160,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image:
                              AssetImage('images/home_maiche@3x.png'), // 背景图片路径
                          fit: BoxFit.cover, // 图片适应方式
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '我要卖车',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Text(
                                '多平台比价 谁高卖谁',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                          Image(
                            image:
                                AssetImage('images/home_btnicon_maiche@3x.png'),
                            width: 18,
                            height: 18,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 155,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage('images/home_gujia@3x.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '车辆估价',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromRGBO(255, 102, 0, 1)),
                              ),
                              Text(
                                '买车卖车 查行情价格',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(255, 102, 0, 1)),
                              ),
                            ],
                          ),
                          Image(
                            image:
                                AssetImage('images/home_btnicon_gujia@3x.png'),
                            width: 18,
                            height: 18,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ))
      ]),
    );
  }
}
