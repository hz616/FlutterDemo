import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridViewPage extends StatefulWidget {
  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  List<IconData> icons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _fetchData();
  }

  @override
  Widget build(BuildContext context) {

    return StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) => new Container(
          color: Colors.green,
          child: new Center(
            child: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text('$index'),
            ),
          )),
      staggeredTileBuilder: (int index) =>
      new StaggeredTile.count(2, index.isEven ? 1 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1),
      itemBuilder: (context, index) {
        if (index == icons.length - 1 && icons.length < 200) {
          _fetchData();
        }
        return Icon(icons[index]);
      },
      itemCount: icons.length,
    );
//    return GridView.extent(
//      maxCrossAxisExtent: 150,
//      childAspectRatio: 2,
//      children: <Widget>[
//        Icon(Icons.ac_unit),
//        Icon(Icons.airport_shuttle),
//        Icon(Icons.all_inclusive),
//        Icon(Icons.beach_access),
//        Icon(Icons.cake),
//        Icon(Icons.free_breakfast),
//      ],
//    );
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1,
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],
    );
  }

  void _fetchData() {
    Future.delayed(Duration(seconds: 5)).then((e) {
      setState(() {
        icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access,
          Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }
}
