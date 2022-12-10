import 'package:flutter/material.dart';

class CustomScroolViewUsage extends StatelessWidget {
  const CustomScroolViewUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CustomScroolView Usage")),
      body: CustomScrollView(
        slivers: [
          _sliverListUsage(),
          _sliverGridUsage(),
          _sliverBoxAdapter(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _sliverBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
        width: 150,
        height: 150,
        color: Colors.red,
      ),
    );
  }

  SliverGrid _sliverGridUsage() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Material(color: Colors.purple, child: ListTile(title: Text("index $index"))),
          );
        },
        childCount: 10,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }

  SliverList _sliverListUsage() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Material(color: Colors.red, child: ListTile(title: Text("index $index"))),
          );
        },
      ),
    );
  }
}
