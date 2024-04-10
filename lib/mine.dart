// import 'package:car300_flutter/components/car_list_state.dart';
import 'package:flutter/material.dart';
import './json/mineJson.dart';

void main() {
  runApp(const Mine());
}

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DefaultTabController(
        length: 4,
        child: MineState(),
      ),
    );
  }
}

class MineState extends StatefulWidget {
  const MineState({super.key});

  @override
  State<MineState> createState() => _MineState();
}

class _MineState extends State<MineState>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController? _tabController;
  final PageController _pageController = PageController();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  void _onPageChange(int index) {
    _tabController?.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: null,
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
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
                              image: AssetImage('images/mine/icon_shezhi_20.png'),
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                              image: AssetImage('images/mine/icon_dianhua_20.png'),
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
                                  image: AssetImage('images/mine/logo.png'),
                                  width: 46,
                                  height: 46,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'che300',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
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
                                    image:
                                        AssetImage('images/arrow_ccc_6_10.png'),
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
                            padding: const EdgeInsets.symmetric(
                                vertical: 13, horizontal: 15),
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
                                            image: AssetImage(
                                                mineCenter[index]['url']),
                                            width: 40,
                                            height: 40,
                                          ),
                                          Text(
                                            mineCenter[index]['label'],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
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
                                      image: AssetImage('images/mine/car_demo.png'),
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
                                      image: AssetImage('images/mine/edit.png'),
                                      width: 18,
                                      height: 18,
                                    ),
                                  ]),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                            image: AssetImage(
                                                'images/arrow_ccc_6_10.png'),
                                            width: 8,
                                            height: 14,
                                          )
                                        ],
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xffff6600),
                                            foregroundColor:
                                                const Color(0XFFFFFFFF),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
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
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF9e9e9e)),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Image(
                                    image:
                                        AssetImage('images/arrow_999_5_8.png'),
                                    width: 5,
                                    height: 8,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 10),
                  //   child: SizedBox(
                  //     height: 20,
                  //     child: ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: const [
                  //         TabItem(text: '车源详情'),
                  //         TabItem(text: '视频卖车'),
                  //         TabItem(text: '车友分享'),
                  //         TabItem(text: '车源交流'),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  // tab
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xFFf5f5f5),
                        border: Border(bottom: BorderSide.none)),
                    // 隐藏点击效果
                    child: TabBar(
                      controller: _tabController,
                      indicator: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/mine/select@2x.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      indicatorPadding: const EdgeInsets.only(left: 0.0),
                      isScrollable: false, // 标签栏是否可以水平滚动
                      indicatorSize: TabBarIndicatorSize.label, // 设置选中Tab指示器的大小
                      labelPadding: const EdgeInsets.all(12), // 设置选中Tab文字的间距
                      indicatorColor: const Color(0xffff6600), // 指示器颜色
                      labelColor: const Color(0xff000000), // 选中Tab文字颜色
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      unselectedLabelColor:
                          const Color(0xff666666), // 未选中Tab中文字颜色
                      unselectedLabelStyle: const TextStyle(
                          fontWeight: FontWeight.normal), // 未选中Tab中样式
                      tabs: const <Widget>[
                        Text('车源详情'),
                        Text('视频卖车'),
                        Text('车友分享'),
                        Text('车源交流')
                      ],
                      onTap: (index) {
                        // 单击Tab时的回调
                        print(index);
                        // if (!mounted) {
                        //   return;
                        // }
                        // _pageController.jumpToPage(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: const TabBarView(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              // child: Center(child: CarListState()),
            ),
            Center(child: Text('视频卖车')),
            Center(child: Text('车友分享')),
            Center(child: Text('车源交流')),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class TabItem extends StatelessWidget {
  final String text;

  const TabItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
