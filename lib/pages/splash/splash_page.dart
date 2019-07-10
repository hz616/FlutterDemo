import 'package:flutter/material.dart';
import 'package:flutter_app/bean/article_bean.dart';
import 'package:flutter_app/pages/home/home_page.dart';

class SplashPage extends StatefulWidget {
  final String title;

  const SplashPage({Key key, this.title}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _disposed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1),()=>_toHome(null));
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Container(
          child: Image(
            image: AssetImage('res/images/splash.png'),
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }

  void _toHome(ArticleBean article) {
    if (_disposed) return;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _disposed = true;
    super.dispose();
  }
}
