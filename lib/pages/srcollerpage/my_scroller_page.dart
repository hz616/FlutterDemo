import 'package:flutter/material.dart';
import 'package:flutter_app/pages/component/scroller_layout.dart';
import 'package:flutter_app/pages/component/list_view_layout.dart';
import 'package:flutter_app/pages/component/grid_view_layout.dart';
import 'package:flutter_app/pages/component/scroll_listener_layout.dart';

class ScrollerLayout extends StatefulWidget {
  @override
  _ScrollerLayoutState createState() => _ScrollerLayoutState();
}

class _ScrollerLayoutState extends State<ScrollerLayout>
    with SingleTickerProviderStateMixin {
  List titles = ["scroller", "listview", "GridView", "ScrollNotify"];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: titles.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroller View page"),
        centerTitle: true,
        bottom: TabBar(
          tabs: titles.map((title) {
            return Text(
              title,
              style: TextStyle(color: Colors.white),
            );
          }).toList(),
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          ScrollerPage(),
          ListViewPage(),
          GridViewPage(),
          ScrollNotificationPage(),
        ],
        controller: _tabController,
      ),
    );
  }
}
