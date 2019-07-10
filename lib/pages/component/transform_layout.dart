import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransFormLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Container(
          color: Colors.black54,
          child: Transform.rotate(angle: math.pi/2,
          child: Text("Heool"),)
        ));
  }
}
