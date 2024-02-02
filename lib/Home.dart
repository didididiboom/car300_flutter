import 'package:flutter/material.dart';
import 'package:dio/dio.dart' as MyDio;
import './json/homeJson.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: const MyHomeState(),
    );
  }
}

class MyHomeState extends StatefulWidget {
  const MyHomeState({super.key});

  @override
  State<MyHomeState> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomeState> {
  var getData = {'list': [], 'len': 0};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLIst();
  }

  void getLIst() async {
    MyDio.Dio dio = MyDio.Dio();
    MyDio.Response res =
        await dio.get('https://m.che300.com/home/get_car_list');
    if (res.data['code'] == 2000) {
      setState(() {
        getData['list'] = res.data['data'];
        getData['len'] = res.data['data'].length;
      });
    }
  }

  Widget buildInfoText(int index) {
    final item = (getData['list'] as List)[index];
    return Text(
      '${item['register_date']}上牌/${item['mile_age']}万公里/${item['source_name']}',
      style: const TextStyle(
        fontSize: 11,
        color: Color.fromRGBO(153, 153, 153, 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // 设置页面背景色为 #F5F5F5
      appBar: null,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
              child: Column(
            children: [
              const Image(
                  image: NetworkImage(
                      'https://assets.che300.com/feimg/m/banner/banner_m@3x.png')),
              Container(
                  constraints: const BoxConstraints(
                    minHeight: 0.0,
                    maxHeight: double.infinity,
                  ),
                  width: double.infinity, // 设置为父级宽度的最大值
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15), // 容器内补白
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 14),
                              )
                            ],
                          );
                        },
                        itemCount: guide.length,
                        shrinkWrap: true, // 设置为 true
                        physics: const NeverScrollableScrollPhysics(), // 禁用滚动行为
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 160,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'images/home_maiche@3x.png'), // 背景图片路径
                                fit: BoxFit.cover, // 图片适应方式
                              ),
                            ),
                            child: const Row(
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
                                  image: AssetImage(
                                      'images/home_btnicon_maiche@3x.png'),
                                  width: 18,
                                  height: 18,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 155,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: const DecorationImage(
                                  image: AssetImage('images/home_gujia@3x.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '车辆估价',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color:
                                              Color.fromRGBO(255, 102, 0, 1)),
                                    ),
                                    Text(
                                      '买车卖车 查行情价格',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              Color.fromRGBO(255, 102, 0, 1)),
                                    ),
                                  ],
                                ),
                                Image(
                                  image: AssetImage(
                                      'images/home_btnicon_gujia@3x.png'),
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
                  constraints: const BoxConstraints(
                    minHeight: 0.0,
                    maxHeight: double.infinity,
                  ),
                  width: double.infinity, // 设置为父级宽度的最大值
                  margin: const EdgeInsets.only(
                      left: 10, top: 0, right: 10, bottom: 10),
                  padding: const EdgeInsets.all(15), // 容器内补白
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          );
                        },
                        itemCount: homeCenter.length,
                        shrinkWrap: true, // 设置为 true
                        physics: const NeverScrollableScrollPhysics(), // 禁用滚动行为
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(243, 243, 247, 1),
                            Color.fromRGBO(252, 243, 242, 1)
                          ]),
                          color: Colors.amber[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '买车必查 全面查询防止被骗',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(51, 51, 51, 1)),
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
            ],
          )),
          SliverList.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      left: 10, top: 10, right: 10, bottom: 0),
                  margin: const EdgeInsets.only(
                      left: 10, top: 0, right: 10, bottom: 0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color.fromRGBO(240, 240, 240, 1), // 边框颜色
                      width: 0.5,
                    ))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴对齐
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), // 设置圆角半径,
                          child: Image(
                            image: NetworkImage(
                                (getData['list'] as List)[index]['pic_url']),
                            width: 115,
                            height: 87,
                            fit: BoxFit.cover, // 图片填充方式
                          ),
                        ),
                        const SizedBox(width: 10), // 添加间距
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              // 限制文本宽度的容器
                              width: 200, // 设置一个合适的宽度
                              child: Text(
                                (getData['list'] as List)[index]['title'],
                                softWrap: true,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            buildInfoText(index),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '${(getData['list'] as List)[index]['price']}万',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(255, 102, 0, 1)),
                                ),
                                const SizedBox(width: 10), // 添加间距
                                const Image(
                                  image: AssetImage('images/icon_gujia@3x.png'),
                                  height: 15,
                                ),
                                const SizedBox(width: 3), // 添加间距
                                Text(
                                  '${(getData['list'] as List)[index]['eval_price']}万',
                                  style: const TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(102, 102, 102, 1)),
                                ),
                                const SizedBox(width: 10), // 添加间距
                                const Image(
                                  image: AssetImage(
                                      'images/icon_xingjiabi@3x.png'),
                                  height: 15,
                                ),
                                const SizedBox(width: 3), // 添加间距
                                Text(
                                  '${(getData['list'] as List)[index]['vpr']}%',
                                  style: const TextStyle(
                                      fontSize: 11,
                                      color: Color.fromRGBO(102, 102, 102, 1)),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ));
            },
            itemCount: getData['len'] as int,
          )
        ],
      ),
    );
  }
}
