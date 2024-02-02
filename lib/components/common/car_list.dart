import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView.builder(itemBuilder: (context, index) {
        print(context);
        return null;
      }),
    );
  }
}
