import 'package:flutter/material.dart';


class HeaderSport extends StatelessWidget {

  final IconData icon;
  final String title;
  final String subTitle;
  final Color color1;
  final Color color2;


  final colorTextHeader = Colors.white.withOpacity(0.5);

  HeaderSport({@required this.icon, @required this.title, @required this.subTitle, this.color1 = Colors.red, this.color2 = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundHeader(color1: this.color1, color2: this.color2),
        Positioned(
          top: -50,
          left: -80,
          child: Icon(this.icon, size: 250, color: Colors.white.withOpacity(0.2)),
        ),
        Column(
          children: [
            SizedBox(height: 80, width: double.infinity),
            Text(this.title, style: TextStyle(fontSize: 15, color: colorTextHeader)),
            SizedBox(height: 20),
            Text(this.subTitle, style: TextStyle(fontSize: 20, color: colorTextHeader, fontWeight: FontWeight.bold)),
            Icon(this.icon, size: 100, color: Colors.white),
          ],
        )
      ],
    );
  }
}

class _BackgroundHeader extends StatelessWidget {
  
  final Color color1;
  final Color color2;

  const _BackgroundHeader({Key key, @required this.color1,@required this.color2}) : super(key: key);
  
 
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(115), bottomRight: Radius.circular(115)),
          gradient: LinearGradient(
            colors: <Color> [
              this.color1,
              this.color2
            ] 
          )
        ),
      );
  }
}