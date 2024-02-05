// import 'dart:math';
import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';
import 'package:dio/dio.dart' as MyDio;

class CarListFlow extends StatefulWidget {
  const CarListFlow({super.key});

  @override
  State<CarListFlow> createState() => _CarListState();
}

class _CarListState extends State<CarListFlow> {
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
    return WaterfallFlow.builder(
      padding: const EdgeInsets.all(5.0),
      gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        lastChildLayoutTypeBuilder: (index) =>
            index == 0 ? LastChildLayoutType.foot : LastChildLayoutType.none,
      ),
      itemBuilder: (BuildContext c, int index) {
        return Container(
          child: const Text('111'),
          //height: ((index % 3) + 1) * 100.0,
        );
      },
    );

    // MasonryGridView.count(
    //   crossAxisCount: 2,
    //   mainAxisSpacing: 8,
    //   crossAxisSpacing: 8,
    //   shrinkWrap: true,
    //   itemCount: getData['len'] as int,
    //   itemBuilder: (context, index) {
    //     return Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(8),
    //           color: const Color(0xffffffff),
    //         ),
    //         child: Column(
    //           children: [
    //             ClipRRect(
    //               borderRadius: BorderRadius.circular(10.0), // 设置圆角半径,
    //               child: Image(
    //                 image: NetworkImage(
    //                     (getData['list'] as List)[index]['pic_url']),
    //                 width: double.infinity,
    //                 height: 130,
    //                 fit: BoxFit.cover, // 图片填充方式
    //               ),
    //             ),
    //             Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       (getData['list'] as List)[index]['title'],
    //                       softWrap: true,
    //                       maxLines: 2,
    //                       overflow: TextOverflow.ellipsis,
    //                       style: const TextStyle(
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     buildInfoText(index),
    //                     Wrap(
    //                       spacing: 8.0,
    //                       children: ((getData['list'] as List)[index]['tags']
    //                               as List<dynamic>)
    //                           .map<Widget>((tagIcon) {
    //                         return Image.network(
    //                           tagIcon as String,
    //                           width: 48,
    //                           height: 14,
    //                           fit: BoxFit.contain,
    //                         );
    //                       }).toList(),
    //                     ),
    //                     Text(
    //                       '${(getData['list'] as List)[index]['price']}万',
    //                       style: const TextStyle(
    //                           fontWeight: FontWeight.bold,
    //                           fontSize: 16,
    //                           color: Color.fromRGBO(255, 102, 0, 1)),
    //                     ),
    //                   ],
    //                 ))
    //           ],
    //         ));
    //   },
    // );
  }
}
