import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as MyDio;
import './json/homeJson.dart';

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
  var getData = {
    'list': [],
    'len': 0
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLIst();
  }

  void getLIst() async {
    MyDio.Dio dio = MyDio.Dio();
    MyDio.Response res = await dio.get('http://127.0.0.1:4523/m1/2227902-0-default/home-list');
    print(res.data['code']);
    if(res.data['code'] == 2000) {
      this.setState(() {
        getData['list'] = res.data['data']['list'];
        getData['len'] = res.data['data']['list'].length;
      });
      print(getData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5), // 设置页面背景色为 #F5F5F5
      appBar: null,
      body: Column(children: [
        const Image(
            image: NetworkImage(
                'https://assets.che300.com/feimg/m/banner/banner_m@3x.png')),
        Container(
            height: 173,
            width: double.infinity, // 设置为父级宽度的最大值
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15), // 容器内补白
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            )),
        Container(
            height: 199,
            width: double.infinity, // 设置为父级宽度的最大值
            margin:
                const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
            padding: const EdgeInsets.all(15), // 容器内补白
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Column(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5, // 一行展示5列
                      crossAxisSpacing: 1, // 横轴
                      mainAxisSpacing: 0, // 主轴的间距
                      childAspectRatio: 1),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image(
                          image: AssetImage(homeCenter[index]['url']),
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          homeCenter[index]['label'],
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )
                      ],
                    );
                  },
                  itemCount: homeCenter.length,
                  shrinkWrap: true, // 设置为 true
                  physics: NeverScrollableScrollPhysics(), // 禁用滚动行为
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(243, 243, 247, 1),
                      Color.fromRGBO(252, 243, 242, 1)
                    ]),
                    color: Colors.amber[900],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '买车必查 全面查询防止被骗',
                        style: TextStyle(
                            fontSize: 12, color: Color.fromRGBO(51, 51, 51, 1)),
                      ),
                      Image(
                        image: AssetImage('images/arrow_ccc_6_10.png'),
                        width: 6,
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            )),
        Expanded(
          child: ListView.builder(
            itemCount: getData['len'] as int,
            itemBuilder: (context, index) {
            // print(index);
            return Container(
              height: 274,
              width: 173,
              child: Column(children: [
                // Image(image: NetworkImage(getData['list'][index]), width: 173, height: ,)
              ],),
            );
          }),
        )
      ]),
    );
  }
}
