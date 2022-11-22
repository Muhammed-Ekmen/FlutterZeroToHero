import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.deepOrange,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network("https://cdn.webtekno.com/media/cache/content_detail_v2/article/118372/the-batman-matt-reeves-korkunc-1639219646.jpg"),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      automaticallyImplyLeading: false,
      // elevation: 0,
      // leading: const Icon(Icons.apple),
      // primary: false,
      toolbarTextStyle: Theme.of(context).textTheme.bodyText1,
      scrolledUnderElevation: 0.0,
      title: const Center(child: Text("101 Courses")),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}


/*
Important Features.

shape: you can use this tag for borderRadius and borderSide.

automaticallyImplyLeading: it removes the appBar back button when you comes from another page.

foregroundColor:  color of front text or icons etc.

primary:

scrolledUnderElevation: when your page has scroller structure, appbar sometimes changing color.

flexibleSpace: you can only use appbar background image. other features are not necessary.




*/