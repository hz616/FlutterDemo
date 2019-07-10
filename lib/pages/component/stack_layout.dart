import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: <Widget>[

          Positioned(
            left: 18,
            child: Text("i an jack"),
          ),

          Container(
            child: Text(
              "Hello world",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
          ),

          Positioned(
            top: 18,
            child: Text("you friend"),
          ),
        ],
      ),
    );
  }
}
