import 'package:car300_flutter/Home.dart';
import 'package:car300_flutter/buy_car.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CarFlutter());
}

class CarFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CarFlutter",
      home: CarFlutterHome(),
    );
  }
}

class CarFlutterHome extends StatefulWidget {
  @override
  State<CarFlutterHome> createState() => CarFlutterHomeState();
}

class CarFlutterHomeState extends State<CarFlutterHome> {
  List pages = [MyHome(), BuyCar()];

  List<String> labels = [
    '首页', '买车', '估价', '卖车', '我的'
  ];

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: 'bbb'),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'ccc'),
    BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: 'ddd'),
    BottomNavigationBarItem(icon: Icon(Icons.manage_accounts), label: 'ddd'),
  ];

  int countPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(labels[countPage]),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
      ),
      // 抽屉
      // drawer: Drawer(
      //   child: ListView(padding: EdgeInsets.zero, children: const [
      //     DrawerHeader(
      //       child: Text('内容介绍'),
      //       decoration: BoxDecoration(
      //         color: Color(0xFFFF0000),
      //       ),
      //     ),
      //     ListTile(
      //       title: Text('用户设置'),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       title: Text('用户设置'),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     )
      //   ]),
      // ),
      body: pages[countPage],
      // 悬浮按钮
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      //   backgroundColor: Color(0xFFFF0000),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 底部bar
      bottomNavigationBar: BottomNavigationBar(
        items: bottomItems,
        type: BottomNavigationBarType.fixed, // 超过三个属性
        currentIndex: countPage,
        onTap: (index) {
          setState(() {
            countPage = index;
          });
        },
      ),
    );
  }
}
