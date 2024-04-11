import 'package:flutter/material.dart';
import 'package:bruno/bruno.dart';

void main() {
  runApp(const BuyCar());
}

class BuyCar extends StatelessWidget {
  const BuyCar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: const BuyCarState(),
    );
  }
}

class BuyCarState extends StatefulWidget {
  const BuyCarState({super.key});

  @override
  State<BuyCarState> createState() => _BuyCarState();
}

class _BuyCarState extends State<BuyCarState> {
  int currentIndex = 0;
  TextStyle? selectedHeiStyle;
  TextStyle? unSelectedHeiStyle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedHeiStyle = const TextStyle(
        fontSize: 18, color: Color(0xFFFFFFFF), fontWeight: FontWeight.w600);

    unSelectedHeiStyle = const TextStyle(
        fontSize: 18, color: Color(0xFF999999), fontWeight: FontWeight.w600);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(children: [
        BrnAppBar(
          //自定义leading
          leading: BrnBackLeading(
            child: Image.asset(
              'images/buy_car/icon_dingwei.png',
              scale: 3.0,
              height: 20,
              width: 20,
            ),
          ),
          //自定义title
          title: Container(
            height: 44,
            padding: const EdgeInsets.only(left: 24, right: 12),
            child: ListView.separated(
              itemCount: 10,
              //横滑
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Center(
                    child: Text(
                      index == 2 ? '标题' : '标题多文字',
                      style: index == currentIndex
                          ? selectedHeiStyle
                          : unSelectedHeiStyle,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 24,
                );
              },
            ),
          ),
          actions: BrnIconAction(
            child: Image.asset(
              'images/buy_car/icon_sousuo.png',
              scale: 3.0,
              height: 20,
              width: 20,
            ),
            iconPressed: () {},
          ),
        )
      ]),
    );
  }
}
