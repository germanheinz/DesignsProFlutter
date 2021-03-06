import 'package:designs_pro/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';


class PinterestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
        create: (_) => new _MenuModel(),
        child: Scaffold(
        body: Stack(
          children: <Widget>[
            PinterestGrid(),
            _PinterestMenuLocation(),
              // PinterestMenu()
          ],
        ),
   ),
    );
  }
}

class _PinterestMenuLocation extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final widthScreen = MediaQuery.of(context).size.width;
    final show        = Provider.of<_MenuModel>(context).getShow;

    return Positioned(
      bottom: 30,
      child: Container(
        color: Colors.red,
        width: widthScreen,
        child: Align(
          child: PinterestMenu(
            show: show,
            items: [
              PinterestButton(icon: Icons.pie_chart, onPressed: (){print('Icon pie_chart');}),
              PinterestButton(icon: Icons.search, onPressed: (){print('Icon pie_chart');}),
              PinterestButton(icon: Icons.home, onPressed: (){print('Icon pie_chart');}),
              
            ]
          ),
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

      if(scrollController.offset > lastPositionScroll) {
        Provider.of<_MenuModel>(context, listen: false).setShow = false;
      } else { 
        Provider.of<_MenuModel>(context, listen: false).setShow = true;
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

class _MenuModel with ChangeNotifier{

  bool _show = true;
  
  bool get getShow => this._show;

  set setShow(bool value){
    this._show = value;
    notifyListeners();
  }
}