import 'package:flutter/material.dart';

void main() {
  runApp(SaleCar());
}

class SaleCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData.light(),
      home: SaleCarState(),
    );
  }
}

class SaleCarState extends StatefulWidget {
  @override
  State<SaleCarState> createState() => _SaleCarState();
}

class _SaleCarState extends State<SaleCarState> {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽度
    // double screenWidth = MediaQuery.of(context).size.width;
    // TextEditingController seriesName = TextEditingController();
    // var regDate = TextEditingController();
    // var cityName = TextEditingController();
    // var telphone = TextEditingController();

    String seriesName = '请选择车辆型号';
    String regDate = '请选择首次上牌时间';
    String cityName = '请选择所在城市';
    String telphone = '请输入手机号码';

    return Scaffold(
      appBar: null,
      body: Column(children: [
        Stack(
          children: [
            Image(
              image: AssetImage('images/sell_car_banner@3x.png'),
              fit: BoxFit.fill,
            ),
            Positioned(
              bottom: 17,
              right: 15,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '已有',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(width: 4),
                  Transform.translate(
                    offset: Offset(0, 2),
                    child: Text(
                      '18667425',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffff6600),
                      ),
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '位车主提交卖车申请',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 0, left: 15, bottom: 15, right: 15),
          decoration: BoxDecoration(color: Color(0xffffffff)),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () => handlerSeries(),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffcccccc), width: 0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '车型',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff000000)),
                        ),
                        Row(
                          children: [
                            Text(
                              seriesName,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffcccccc)),
                            ),
                            SizedBox(width: 10), // 添加间距
                            Image(
                              image: AssetImage('images/arrow_999_5_8.png'),
                              width: 8,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    ),
                  )),
              GestureDetector(
                onTap: () => handlerRegDate(),
                child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffcccccc), width: 0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '首次上牌',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff000000)),
                        ),
                        Row(
                          children: [
                            Text(
                              regDate,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffcccccc)),
                            ),
                            SizedBox(width: 10), // 添加间距
                            Image(
                              image: AssetImage('images/arrow_999_5_8.png'),
                              width: 8,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () => handlerCity(),
                child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffcccccc), width: 0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '所在城市',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff000000)),
                        ),
                        Row(
                          children: [
                            Text(
                              cityName,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffcccccc)),
                            ),
                            SizedBox(width: 10), // 添加间距
                            Image(
                              image: AssetImage('images/arrow_999_5_8.png'),
                              width: 8,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    )),
              ),
              GestureDetector(
                onTap: () => handlerTel(),
                child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color(0xffcccccc), width: 0.5))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '手机号码',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xff000000)),
                        ),
                        Row(
                          children: [
                            Text(
                              telphone,
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xffcccccc)),
                            ),
                            SizedBox(width: 10), // 添加间距
                            Image(
                              image: AssetImage('images/arrow_999_5_8.png'),
                              width: 8,
                              height: 14,
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Container(
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffcccccc), width: 0.5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '验证码',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff000000)),
                      ),
                      Row(
                        children: [
                          Text(
                            cityName,
                            style: TextStyle(
                                fontSize: 16, color: Color(0xffcccccc)),
                          ),
                          SizedBox(width: 10), // 添加间距
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffff9702),
                                foregroundColor: const Color(0XFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                minimumSize: Size(64, 36),
                              ),
                              onPressed: () => {print('获取验证码')},
                              child: Text(
                                '获取验证码',
                                style: TextStyle(
                                    color: Color(0xffffffff), fontSize: 14),
                              ))
                          // Image(
                          //   image: AssetImage('images/arrow_999_5_8.png'),
                          //   width: 8,
                          //   height: 14,
                          // )
                        ],
                      )
                    ],
                  )),
              GestureDetector(
                onTap: () => sellCar(),
                child: Container(
                    margin: EdgeInsets.only(top: 15),
                    width: double.infinity,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Color(0xffff6600),
                        borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: Text(
                      '我要卖车',
                      style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start, // 垂直方向上顶部对齐
                    children: [
                      Image(
                        image: AssetImage('images/circle.png'),
                        width: 15,
                        height: 15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '阅读并同意',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff000000)),
                              ),
                              TextSpan(
                                text: '《个人信息保护声明》',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xffff6600)),
                              ),
                              TextSpan(
                                text: '，接受合作方来电服务接受合作方来电服务接受合作方来电服务接受合作方来电服务',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff000000)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  void handlerSeries() {
    print('选择车辆型号');
  }

  handlerTel() {}

  handlerCity() {}

  handlerRegDate() {}

  sellCar() {}
}
