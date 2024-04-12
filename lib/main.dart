import 'package:car300_flutter/Home.dart';
import 'package:car300_flutter/buy_car.dart';
import 'package:car300_flutter/eval.dart';
import 'package:car300_flutter/mine.dart';
import 'package:car300_flutter/sale_car.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarFlutter());
}

class CarFlutter extends StatelessWidget {
  const CarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CarFlutter",
      home: CarFlutterHome(),
    );
  }
}

class CarFlutterHome extends StatefulWidget {
  const CarFlutterHome({super.key});

  @override
  State<CarFlutterHome> createState() => CarFlutterHomeState();
}

class CarFlutterHomeState extends State<CarFlutterHome> {
  List pages = [
    const MyHome(),
    const BuyCar(),
    Eval(),
    SaleCar(),
    const Mine()
  ];

  List<String> labels = ['首页', '买车', '估价', '卖车', '我的'];

  List<BottomNavigationBarItem> bottomItems = [
    const BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('images/home_icon_shouye_gray.png'),
            width: 20,
            height: 20),
        label: '首页'),
    const BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('images/buy_icon_maiche_gray.png'),
            width: 20,
            height: 20),
        label: '买车'),
    const BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('images/icon_guzhi_333_24@3x.png'),
            width: 20,
            height: 20),
        label: '估价'),
    const BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('images/sell_icon_mai_gray.png'),
            width: 20,
            height: 20),
        label: '卖车'),
    const BottomNavigationBarItem(
        icon: Image(
            image: AssetImage('images/me_icon_geren_gray.png'),
            width: 20,
            height: 20),
        label: '我的'),
  ];

  int countPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(0.0, 0.0),
        child: Container(),
      ),
      // AppBar(
      //   title: Text(labels[countPage]),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      //   // leading: IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
      // ),
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
        selectedItemColor: Colors.amber[900],
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
