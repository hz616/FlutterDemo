import 'package:flutter/material.dart';

class MyItem extends StatefulWidget {
  @override
  _MyItemState createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: getItem(),
    );
  }

  getItem() {
    return FlatButton(
        onPressed: () => {print("点击了哦")},
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: Text(
                "这是一点描述",
                style: TextStyle(color: Colors.redAccent, fontSize: 14),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              margin: new EdgeInsets.only(top: 6, bottom: 2),
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                getBottomItem(Icons.star, "122222"),
                getBottomItem(Icons.link, "1223333"),
                getBottomItem(Icons.subject, "3333333"),
              ],
            )
          ],
        ));
  }


  getBottomItem(IconData icon, String text) {
    return new Expanded(
        flex: 1,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(icon, size: 16, color: Colors.grey),
            new Padding(padding: new EdgeInsets.only(left: 5.0)),
            new Text(
              text,
              style: new TextStyle(color: Colors.grey, fontSize: 14),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ));
  }
}
