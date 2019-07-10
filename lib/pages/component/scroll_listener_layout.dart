import 'package:flutter/material.dart';

class ScrollNotificationPage extends StatefulWidget {
  @override
  _ScrollNotificationPageState createState() => _ScrollNotificationPageState();
}

class _ScrollNotificationPageState extends State<ScrollNotificationPage> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: NotificationListener(
      onNotification: (ScrollNotification notification) {
        double progress =
            notification.metrics.pixels / notification.metrics.maxScrollExtent;
        setState(() {
          _progress = "${(progress * 100).toInt()}%";
        });
        print("BottomEdge: ${notification.metrics.extentAfter == 0}");
      },
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("$index"),
              );
            },
            itemExtent: 50,
            itemCount: 100,
          ),
          CircleAvatar(
            radius: 30,
            child: Text(_progress),
            backgroundColor: Colors.black54,
          ),
        ],
      ),
    ));
  }
}
