import 'package:flutter/material.dart';

class NestedSliverUsage extends StatelessWidget {
  const NestedSliverUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            toolbarHeight: 200,
            floating: true,
            pinned: true,
            title: Text(innerBoxIsScrolled == true ? "NestedSliver Usage SCROLL" : "NestedSliver Usage NOT SCROLL"),
          ),
        ];
      },
      body: Scaffold(
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(10),
              color: Colors.black,
            );
          },
        ),
      ),
    );
  }
}



/*
we are mostly using NestedSliver for only appBar add. That usage is very simple. 
*/