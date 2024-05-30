import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

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
  List modelInfoArray = [
    {"name": "过户次数", "value": "0次"},
    {"name": "排量", "value": "1.4T"},
    {"name": "变速箱", "value": "7挡 干式双离合"},
    {"name": "综合油耗", "value": "5.5L/100km"},
    {"name": "燃油标号", "value": "95号"},
    {"name": "最大马力", "value": "150Ps"},
    {"name": "百公里加速", "value": "8.6s"},
    {"name": "轴距", "value": "2631mm"}
  ];

  // 参数行
  Widget modelInfoList() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: modelInfoArray.map((config) {
          return Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  config["value"],
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xff333333)),
                ),
                const SizedBox(height: 5),
                Text(
                  config["name"],
                  style:
                      const TextStyle(fontSize: 11, color: Color(0xff999999)),
                ),
              ],
            ),
          );
        }).toList()));
    // ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       margin: EdgeInsets.only(right: 20),
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             modelInfoArray[index]["value"],
    //             style: const TextStyle(fontSize: 12, color: Color(0xff333333)),
    //           ),
    //           const SizedBox(height: 5),
    //           Text(
    //             modelInfoArray[index]["name"],
    //             style: const TextStyle(fontSize: 11, color: Color(0xff999999)),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    //   itemCount: modelInfoArray.length,
    // );
  }

  List highlightConfigArray = [
    {
      "name": "定速巡航",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/dsxh.png"
    },
    {
      "name": "胎压监测",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/tyjc.png"
    },
    {
      "name": "无钥匙启动",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/wysqd.png"
    },
    {
      "name": "制动力分配",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/zdlfp.png"
    },
    {
      "name": "后视镜加热",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/hsjjr.png"
    },
    {
      "name": "疲劳驾驶提示",
      "icon":
          "https://ssl-assets.che300.com/app/images/highlightsnew/pljsts.png"
    },
    {
      "name": "牵引力控制",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/qylkz.png"
    },
    {
      "name": "儿童座椅接口",
      "icon":
          "https://ssl-assets.che300.com/app/images/highlightsnew/etzyjk.png"
    },
    {
      "name": "车内氛围灯",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/cnfwd.png"
    },
    {
      "name": "车身稳定",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/cswd.png"
    },
    {
      "name": "倒车影像",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/dcyx.png"
    },
    {
      "name": "自动驻车",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/zdzc.png"
    },
    {
      "name": "感应雨刷",
      "icon": "https://ssl-assets.che300.com/app/images/highlightsnew/gyys.png"
    }
  ];

  // 参数行
  Widget highlightConfigList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: highlightConfigArray.map((config) {
          return Container(
            margin: EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: NetworkImage(config["icon"]),
                  width: 30,
                  height: 30,
                ),
                const SizedBox(height: 5),
                Text(
                  config["name"],
                  style:
                      const TextStyle(fontSize: 11, color: Color(0xff999999)),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

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
            onPressed: () => back(context),
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
                        image:
                            AssetImage('images/car_detail/maichebicha@3x.png'),
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
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(color: Color(0xffffffff)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              // 档案
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '档案',
                    style: TextStyle(fontSize: 12, color: Color(0xff333333)),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '2022-6',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '上牌时间',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff999999)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '74.44万公里',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '表显里程',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff999999)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '660km',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '官方续航',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff999999)),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '南京',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '车辆所在地',
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xff999999)),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              // 参数
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '参数',
                    style: TextStyle(fontSize: 12, color: Color(0xff333333)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: modelInfoList(),
                  ),
                  SizedBox(
                    width: 15,
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
              SizedBox(
                height: 12,
              ),
              // 亮点
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '亮点',
                    style: TextStyle(fontSize: 12, color: Color(0xff333333)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: highlightConfigList(),
                  ),
                  SizedBox(
                    width: 15,
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
        )
      ]),
    );
  }

  // 返回
  back(context) {
    Navigator.pop(context);
  }
}
