import 'package:flutter/material.dart';

class ScrollerPage extends StatelessWidget {
  final String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: str.split("").map((title){
              return Text(title,textScaleFactor: 2,);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
