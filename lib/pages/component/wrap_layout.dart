import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 8,
        runSpacing: 4,
        alignment: WrapAlignment.start,
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("B"),
            ),
            label: Text("Hamilton"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("C"),
            ),
            label: Text("Hamilton"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("D"),
            ),
            label: Text("Hamilton"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text("E"),
            ),
            label: Text("Hamilton"),
          ),

        ],
      ),
    );
  }
}
