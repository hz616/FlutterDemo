import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Demo'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text("press"),
          onPressed: () {},
          color: CupertinoColors.activeBlue,
        ),
      ),
    );
  }
}
