import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PinterestButton{
  final Function onPressed;
  final IconData icon;


  PinterestButton({@required this.onPressed, @required this.icon});
}



class PinterestMenu extends StatelessWidget {

  final bool show;
  
  PinterestMenu({this.show = true});
  
  final List<PinterestButton> items = [
    PinterestButton(icon: Icons.pie_chart, onPressed: (){print('Icon pie_chart');}),
    PinterestButton(icon: Icons.search, onPressed: (){print('Icon pie_chart');}),
    PinterestButton(icon: Icons.home, onPressed: (){print('Icon pie_chart');}),
  ];
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: AnimatedOpacity(
          duration: Duration(milliseconds: 250),
          opacity: (show) ? 1 : 0,
          child: Visibility(
              visible: show,
              child: PinterestMenuBackground(
              child: _MenuItems(items),
        ),
          ),
      )
    );
  }
}

class PinterestMenuBackground extends StatelessWidget {
  
  final Widget child;

  const PinterestMenuBackground({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: child,
    width: 250,
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(100)),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black,
          blurRadius: 9,
          spreadRadius: -5
        )
      ]
    ),
      );
  }
}

class _MenuItems extends StatelessWidget {
  
  final List<PinterestButton> menuItems;

  _MenuItems(this.menuItems);
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length, (index) => _PinterestMenuButton(index, menuItems[index]))
    );
  }
}

class _PinterestMenuButton extends StatelessWidget {
  
  final int index;
  final PinterestButton item;

  _PinterestMenuButton(this.index, this.item);
  
  @override
  Widget build(BuildContext context) {

    final itemSelected = Provider.of<_MenuModel>(context).itemSelected;

    return GestureDetector(
        onTap: (){
          Provider.of<_MenuModel>(context, listen: false).itemSelected = index;
          item.onPressed();
        },
        behavior: HitTestBehavior.translucent,
        child: Container(
        child: Icon(
          item.icon,
          size: ( itemSelected == index ) ? 30 : 25,
          color: ( itemSelected == index ) ? Colors.red : Colors.blueGrey,
          ),
      ),
    );
  }
}

class _MenuModel with ChangeNotifier{
  
  int _itemSelected = 0;

  int get itemSelected => this._itemSelected;

  set itemSelected(int index){
    this._itemSelected = index;
    notifyListeners();
  }
}