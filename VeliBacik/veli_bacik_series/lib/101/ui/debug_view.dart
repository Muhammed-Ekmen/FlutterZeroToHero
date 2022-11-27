import 'package:flutter/material.dart';
import 'package:veli_bacik_series/101/components/appbar/custom_appbar.dart';

class DebugView extends StatefulWidget {
  const DebugView({Key? key}) : super(key: key);

  @override
  State<DebugView> createState() => _DebugViewState();
}

class _DebugViewState extends State<DebugView> {
  int number = 0;
  String imageURL = "https://i.pinimg.com/originals/26/86/8e/26868e6c76dda7049b530912919067df.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.filled(10, Image.network(imageURL)).toList(),
              Text(number.toString(), style: Theme.of(context).textTheme.headline1),
            ],
          ),
        ),
      ),
      floatingActionButton: _fab(),
    );
  }

  _fab() {
    return FloatingActionButton(
      onPressed: () => setState(() => number += 1),
      child: const Icon(Icons.add),
    );
  }
}


/*
we have an counter app. that is very important and big. In order:

*firstly,you shoudl use log instad of the debugPrint. it has more features. But it must comes from dart:Developer import
for more go to the debugView Page.


*breakpoint usage(real debugging):
----
breakpoint for stopping when the specific point. For instance, you can wants to when the counte app run the setState , it will stop
and you wants to check is everythink ok?

instructions:
add breakpoint on line 24 where setState.
start the debug mode. and you will see the app will stop. and yo can see debug panel.
go to the "this" and there are some properties.
mounted---> did your screen change I mean left the screen
variables like number and its value.
-------
other feature is expression. you can set up which value do you expectinig.
For example.
add breakpount to number. 
go debug panel and find your dart file.
click the pencil icon and write your conditions like if else block brackets. For example: number==7
when you did this, the app will always check the number and if number is 7, it will reclaim you.
there is an alternative on wathc section.
-------
watch section feature.

you can add any variable at the here, you can always follow and check some variabel or values.
find the your variable and right click and add to watch. 



* DevTool Sections

MEMORY

* allocatedMemory: your app size.
* Garbage collection (GB) : these are permanent values. it finds the dead values and delete the memory.
I mean, when you click the number, it always will update. when the update process doing,
old number values deletes. That is your old number value.
* Events: (Purple arrows) These are new ram spaces. for example; when you add image with image.network you will see the purple arrow,
that is your new memory usage.
NOTE: some new phones allows only 500 mb to use your app. In this reason when you app encounter crash at once,probably because of memory pressure.

NETWORK

*in here, you can check the your app request,endpoint and taken parameters. Sometimes backend can be problem. Inthis reason you need to check.








*/