import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text("英语单词"),
        ),
        Expanded(
          child: ScrollControl(),
        )
      ],
    );
  }
}

class ScrollControl extends StatefulWidget {
  @override
  _ScrollControlState createState() => _ScrollControlState();
}

class _ScrollControlState extends State<ScrollControl> {
  ScrollController _controller = ScrollController();
  bool showTopBtn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      print(_controller.offset);
      if (_controller.offset < 1000 && showTopBtn) {
        setState(() {
          showTopBtn = false;
        });
      } else if (_controller.offset > 1000 && showTopBtn == false) {
        setState(() {
          showTopBtn = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemExtent: 50,
      controller: _controller,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("$index"),
        );
      },
    );
  }
}

class WordsList extends StatefulWidget {
  @override
  _WordsListState createState() => _WordsListState();
}

class _WordsListState extends State<WordsList> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  Widget divider1 = Divider(
    color: Colors.blue,
  );
  Widget divider2 = Divider(
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          if (_words[index] == loadingTag) {
            if (_words.length - 1 < 100) {
              _fetchData();
              return Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16),
                child: Text(
                  "没有更多了哦",
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }
          } else {
            return ListTile(
              title: Text(_words[index]),
            );
          }
        },
        separatorBuilder: (context, index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
        itemCount: _words.length);
  }

  void _fetchData() {
    Future.delayed(Duration(seconds: 2)).then((word) {
      _words.insertAll(
          _words.length - 1,
          generateWordPairs()
              .take(20)
              .map((word) => word.asPascalCase)
              .toList());
      setState(() {});
    });
  }
}
