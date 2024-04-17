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
      backgroundColor: Color(0xfff5f5f5),
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
      body: Column(children: [
        Image(image: AssetImage('images/car_detail/demo.png')),
        Container(
          decoration: BoxDecoration(color: Color(0xffffffff)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: '33.68',
                            style: TextStyle(
                                color: Color(0xffff6600), fontSize: 24)),
                        TextSpan(
                            text: '万',
                            style: TextStyle(
                                color: Color(0xffff6600), fontSize: 16)),
                      ])),
                      SizedBox(
                        width: 10,
                      ),
                      Transform.translate(
                        offset: Offset(0, -2),
                        child: Text(
                          '新车指导价',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff333333)),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Transform.translate(
                        offset: Offset(0, 0),
                        child: Text(
                          '39万',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff333333)),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Transform.translate(
                          offset: Offset(0, -4),
                          child: Image(
                            image: AssetImage('images/car_detail/arrow.png'),
                            width: 5,
                            height: 8,
                          )),
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
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '车300基于非营运车估价',
                    style: TextStyle(fontSize: 12, color: Color(0xff333333)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '1.94-2.11万',
                    style: TextStyle(fontSize: 12, color: Color(0xff333333)),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '2014款 MINI COUNTRYMAN 1.6T车11-1207 自动豪华期间定制版',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/car_detail/icon_fenqi.png'),
                        width: 52,
                        height: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '首付8.94万',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '贷款计算',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Transform.translate(
                        offset: Offset(0, 1),
                        child: Image(
                          image: AssetImage('images/car_detail/arrow.png'),
                          width: 5,
                          height: 8,
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '快速申请',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Transform.translate(
                        offset: Offset(0, 1),
                        child: Image(
                          image: AssetImage('images/car_detail/arrow.png'),
                          width: 5,
                          height: 8,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/car_detail/icon_chejian.png'),
                        width: 52,
                        height: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '第三方车辆检测-事故排查',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '快速预约',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Transform.translate(
                        offset: Offset(0, 1),
                        child: Image(
                          image: AssetImage('images/car_detail/arrow.png'),
                          width: 5,
                          height: 8,
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('images/car_detail/maichebicha@3x.png'),
                        width: 52,
                        height: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '查车价 查车型 查车况 安心购车',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '查看详情',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Transform.translate(
                        offset: Offset(0, 1),
                        child: Image(
                          image: AssetImage('images/car_detail/arrow.png'),
                          width: 5,
                          height: 8,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
