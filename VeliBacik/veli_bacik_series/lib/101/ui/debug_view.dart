import 'package:flutter/material.dart';
import 'package:veli_bacik_series/101/components/appbar/custom_appbar.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  @override
  State<DebugView> createState() => _DebugViewState();
}

class _DebugViewState extends State<DebugView> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(child: Text(number.toString(), style: Theme.of(context).textTheme.headline1)),
      floatingActionButton: _fab(),
    );
  }

  _fab() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          number += 1;
        });
      },
      child: const Icon(Icons.add),
    );
  }
}


/*
we have an counter app.

*/