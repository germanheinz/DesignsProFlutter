import 'package:designs_pro/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class PinterestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      // body: PinterestMenu(),
      body: Stack(
        children: <Widget>[
          PinterestGrid(),
          _PinterestMenuLocation(),
            // PinterestMenu()
        ],
      ),
   );
  }
}

class _PinterestMenuLocation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 30,
      child: Container(
        color: Colors.red,
        width: widthScreen,
        child: Align(
          child: PinterestMenu(),
        ),
      ));
  }
}

class PinterestGrid extends StatefulWidget {
  
  @override
  _PinterestGridState createState() => _PinterestGridState();
}

class _PinterestGridState extends State<PinterestGrid> {
  final List<int> itemsNumber = List.generate(200, (index) => index);


  ScrollController scrollController = new ScrollController();
  double lastPositionScroll = 0;


  @override
  void initState() { 
    super.initState();
    scrollController.addListener(() {
      // print('ScrollListenner ${scrollController.offset}');
      if(scrollController.offset > lastPositionScroll) {
        print('ocultar menu');
      } else { 
        print('mostrar menu');
      }
      lastPositionScroll = scrollController.offset;
    });
    
  }
  @override
  void dispose() { 
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new StaggeredGridView.countBuilder(
    controller: scrollController,
    crossAxisCount: 4,
    itemCount: itemsNumber.length,
    itemBuilder: (BuildContext context, int index) => _PinterestItem(index),
    staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 2 : 3),
    mainAxisSpacing: 4.0,
    crossAxisSpacing: 4.0,
  );
  }
}

class _PinterestItem extends StatelessWidget {
  
  final int index;

  _PinterestItem(this.index);

  @override
  Widget build(BuildContext context) {
    return new Container(
        // margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(6))
        ),
        child: new Center(
          child: new CircleAvatar(
            backgroundColor: Colors.white,
            child: new Text('$index'),
          ),
        ));
  }
}