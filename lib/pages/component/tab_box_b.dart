import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  _ParentWidgetState createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handTapBoxChange(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBoxB(
        active: _active,
        onChange: _handTapBoxChange,
      ),
    );
  }
}

class TabBoxB extends StatelessWidget {
  final bool active;

  final ValueChanged<bool> onChange;

  TabBoxB({Key key, this.active: false, this.onChange}) : super(key: key);

  void _handTap() {
    onChange(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'InActive',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }
}
