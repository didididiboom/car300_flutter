import 'package:car300_flutter/components/common/car_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TabBarMine());
}

class TabBarMine extends StatelessWidget {
  const TabBarMine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: AppBar(
                title: null,
                backgroundColor: const Color(0xfff5f5f5), // 设置背景颜色
                bottom: const TabBar(
                  indicator: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/select@2x.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  indicatorColor: Color(0xffff6600), // 指示器颜色
                  labelColor: Color(0xff000000), // 选中Tab文字颜色
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  unselectedLabelColor: Color(0xff666666), // 未选中Tab中文字颜色
                  unselectedLabelStyle:
                      TextStyle(fontWeight: FontWeight.normal), // 未选中Tab中样式
                  tabs: [
                    Tab(
                      text: '车源详情',
                    ),
                    Tab(
                      text: '视频卖车',
                    ),
                    Tab(
                      text: '车友分享',
                    ),
                    Tab(
                      text: '车源交流',
                    ),
                  ],
                ),
              ),
            ),
            body: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffff6600),
              ),
              child: const TabBarView(
                children: [
                  CarList(),
                  Text('视频卖车'),
                  Text('车友分享'),
                  Text('车源交流'),
                ],
              ),
            )),
      ),
    );
  }
}
