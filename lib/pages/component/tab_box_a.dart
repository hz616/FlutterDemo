import 'package:flutter/material.dart';

class TabBoxA extends StatefulWidget {
  @override
  _TabBoxAState createState() => _TabBoxAState();

  TabBoxA({Key key}) : super(key: key);
}

class _TabBoxAState extends State<TabBoxA> {
  bool _isActive = false;

  void _handTap() {
    setState(() {
      _isActive = !_isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handTap,
      child: Container(
        child: Center(
          child: Text(
            _isActive ? "Active" : "InActive",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: _isActive ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
