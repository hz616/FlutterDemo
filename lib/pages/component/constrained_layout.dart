import 'package:flutter/material.dart';

class ConstrainedLayout extends StatelessWidget {
  final Widget redBox = DecoratedBox(
      decoration: BoxDecoration(
    color: Colors.red,
  ));

  final Widget decoratedLayout = DecoratedBox(
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
//            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ]),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
      child: Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
//    return ConstrainedBox(
//      constraints: BoxConstraints.tight(Size(double.infinity, 100)),
//      child: Container(
//        height: 5,
//        child: redBox,
//      ),
//    );
  return decoratedLayout;
  }
}
