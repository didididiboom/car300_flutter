import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const Mine());
}

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const DefaultTabController(
        length: 4,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, _) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const ListTile(title: Text('Item 1')),
                  const ListTile(title: Text('Item 2')),
                  const ListTile(title: Text('Item 3')),
                  const ListTile(title: Text('Item 4')),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        TabItem(text: 'Tab 1'),
                        TabItem(text: 'Tab 2'),
                        TabItem(text: 'Tab 3'),
                        TabItem(text: 'Tab 4'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: [
            StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) => Container(
                color: Colors.blueGrey,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text('$index'),
                  ),
                ),
              ),
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 1),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
            const Center(child: Text('Tab 2 Content')),
            const Center(child: Text('Tab 3 Content')),
            const Center(child: Text('Tab 4 Content')),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String text;

  const TabItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
