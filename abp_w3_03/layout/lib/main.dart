import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  const Coba({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('2211102348 Nasrullloh Yuli Nugroho'),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text(''),
              );
            }, childCount: 20),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text(' $index'),
              );
            }),
          ),
        ],
      ),
    );
  }
}
