import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home/home_page.dart';

class MyCount extends StatefulWidget {
  final String title;

  const MyCount({Key key, this.title}) : super(key: key);

  @override
  _MyCountState createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  int _count = 0;

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'the counter will be increment when you push the button test ellipsis',
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                height: 1.2,
                fontFamily: "Courier",
                background: Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed
              ),
            ),
            Text(
              '$_count',
              style: TextStyle(color: Colors.redAccent, fontSize: 14),
            ),
            RaisedButton(
              child: Text('open new page'),
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.light,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
//              Navigator.pushNamed(context, "home_page");
              },
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Home:"
                  ),
                  TextSpan(
                    text: "http://www.baidu.com",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: null,
                  ),
                ]
              )
            ),
            Image(
              image: AssetImage("res/images/splash.png"),
              width: 100,
              height: 100,
              fit: BoxFit.none,
            ),

            Image.network(
              "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
              width: 100,
              height: 100,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,)
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: Icon(Icons.add),
      ),
    );
  }

}
