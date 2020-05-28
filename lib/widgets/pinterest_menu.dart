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
        child: Text('Hola mundo desde menu'),
      ),
    );
  }
}