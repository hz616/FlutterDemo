import 'package:flutter/material.dart';
import 'package:flutter_app/pages/component/my_count.dart';
import 'package:flutter_app/pages/home/home_page.dart';
import 'package:flutter_app/pages/component/flex_layout.dart';
import 'package:flutter_app/pages/component/wrap_layout.dart';
import 'package:flutter_app/pages/component/stack_layout.dart';
import 'package:flutter_app/pages/component/padding_layout.dart';
import 'package:flutter_app/pages/component/constrained_layout.dart';
import 'package:flutter_app/pages/component/transform_layout.dart';
import 'package:flutter_app/pages/component/scroller_layout.dart';
import 'package:flutter_app/pages/srcollerpage/my_scroller_page.dart';
import 'package:flutter_app/pages/component/custom_scroller_layout.dart';
import 'package:flutter_app/pages/component/scroll_control_layout.dart';
import 'package:flutter_app/pages/changetheme/theme_change_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '一文',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('主页widget展示'),
              centerTitle: true,
            ),
            body: Body()));
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime _lastPressAt;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressAt == null ||
            DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
          _lastPressAt = DateTime.now();
          return false;
        }
        return true;
      },
      child: Column(
        children: <Widget>[
//              FlexLayout(),
//              WrapLayout(),
          PaddingLayout(),
          ConstrainedLayout(),
          TransFormLayout(),
          FlatButton(
            color: Colors.blue,
            child: Text("jump to home"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("jump to listview"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => (ScrollerLayout())));
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("jump to custom scroller view"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (CustomScrollerPage())));
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("jump to custom scroller control"),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (ScrollControlPage())));
            },
          ),
          FlatButton(
            color: Colors.blue,
            child: Text("jump to theme change"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => (ThemeChangePage())));
            },
          ),
        ],
      ),
    );
  }
}
