import 'package:flutter/material.dart';

class PinterestButton{
  final Function onPressed;
  final IconData icon;


  PinterestButton({@required this.onPressed, @required this.icon});
}



class PinterestMenu extends StatelessWidget {
  
  final List<PinterestButton> items = [
    PinterestButton(icon: Icons.pie_chart, onPressed: (){print('Icon pie_chart');}),
    PinterestButton(icon: Icons.search, onPressed: (){print('Icon pie_chart');}),
    PinterestButton(icon: Icons.home, onPressed: (){print('Icon pie_chart');}),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
        child: _MenuItems(items),
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
    return Container(
      child: Icon(item.icon),
    );
  }
}