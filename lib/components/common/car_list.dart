// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:dio/dio.dart' as MyDio;

void main() {
  runApp(const CarList());
}

class CarList extends StatelessWidget {
  const CarList({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '车源列表',
      home: CarListState(),
    );
  }
}

class CarListState extends StatefulWidget {
  const CarListState({super.key});

  @override
  State<CarListState> createState() => _CarListState();
}

class _CarListState extends State<CarListState> {
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
        fontSize: 12,
        color: Color(0xff999999),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        appBar: null,
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: MasonryGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              itemCount: getData['len'] as int,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xffffffff),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0), // 设置圆角半径,
                          child: Image(
                            image: NetworkImage(
                                (getData['list'] as List)[index]['pic_url']),
                            width: double.infinity,
                            height: 130,
                            fit: BoxFit.cover, // 图片填充方式
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  (getData['list'] as List)[index]['title'],
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                buildInfoText(index),
                                Wrap(
                                  spacing: 8.0,
                                  children: ((getData['list'] as List)[index]
                                          ['tags'] as List<dynamic>)
                                      .map<Widget>((tagIcon) {
                                    return Image.network(
                                      tagIcon as String,
                                      width: 48,
                                      height: 14,
                                      fit: BoxFit.contain,
                                    );
                                  }).toList(),
                                ),
                                Text(
                                  '${(getData['list'] as List)[index]['price']}万',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Color.fromRGBO(255, 102, 0, 1)),
                                ),
                              ],
                            ))
                      ],
                    ));
              },
            ),
          )
        ]));
  }
}
