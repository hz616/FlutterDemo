import 'package:flutter/material.dart';

class CustomScrollerPage extends StatefulWidget {
  @override
  _CustomScrollerPageState createState() => _CustomScrollerPageState();
}

class _CustomScrollerPageState extends State<CustomScrollerPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Demo"),
              background: Image.network(
                  "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.all(8),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.cyan[100 * (index % 9)],
                      child: Text("grid item $index"),
                    );
                  }, childCount: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 4))),
          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text("list item $index"),
              );
            }, childCount: 50),
          ),
        ],
      ),
    );
  }
}
