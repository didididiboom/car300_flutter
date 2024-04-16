import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() {
  runApp(CarDetail());
}

class CarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '车源详情', theme: ThemeData.light(), home: CarDetailState());
  }
}

class CarDetailState extends StatefulWidget {
  @override
  State<CarDetailState> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetailState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // backgroundColor: Color(0xff000000),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Color(0xffffffff)),
        leading: new IconButton(
            onPressed: () => {print('返回')},
            icon: new Icon(Icons.arrow_back_ios)),
        actions: <Widget>[
          Image(
            image: AssetImage('images/car_detail/icon_fff_duibi.png'),
            width: 39,
            height: 19,
          ),
          SizedBox(
            width: 20,
          ),
          Image(
            image: AssetImage('images/car_detail/icon_fff_shoucangjia.png'),
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Image(
            image: AssetImage('images/car_detail/icon_fff_jubao.png'),
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Image(
            image: AssetImage('images/car_detail/icon_fff_fenxiang.png'),
            width: 20,
            height: 20,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [
          Image(image: AssetImage('images/car_detail/demo.png')),
          Row(
            children: [
              Row(
                children: [
                  // Text.rich()
                ],
              ),
              ElevatedButton(
                onPressed: () => {print('询问底价')},
                child: Text(
                  '询问底价',
                  style: TextStyle(fontSize: 14),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffff6600),
                  foregroundColor: const Color(0XFFFFFFFF),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  minimumSize: const Size(98, 36),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
