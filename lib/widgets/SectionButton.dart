import 'package:flutter/material.dart';


class SectionButton extends StatelessWidget {

  final IconData icon;
  final Color color1;
  final Color color2;
  @required final String text;
  @required final Function onPress;

  const SectionButton({Key key, this.icon = Icons.add, this.text, this.color1 = Colors.grey, this.color2 = Colors.grey, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: this.onPress,
        child: Stack(
        children: <Widget> [
           _BackgroundSectionButton(icon: this.icon, color1: this.color1, color2: this.color2),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             
             children: [
                SizedBox(height: 140, width: 40),
                Icon(this.icon, size: 50, color: color2),
                SizedBox(width: 20),
                Expanded(child: Text( this.text, style: TextStyle(color: this.color2, fontWeight: FontWeight.bold, fontSize: 18),)),
                Icon(Icons.arrow_forward,color: this.color2, size: 35),
                SizedBox(width: 40),
             ],
           )
        ],
      ),
    );
  }
}

class _BackgroundSectionButton extends StatelessWidget {

  final IconData icon;
  final Color color1;
  final Color color2;

  const _BackgroundSectionButton({Key key, this.icon, this.color1, this.color2}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
            child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Icon(this.icon, size: 100, color: Colors.white.withOpacity(0.2),),
                // top: 30,
                // left: 278,
              )
            ],
          ),
        ),

        width: double.infinity,
        height: 100,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black87.withOpacity(0.2),
            offset: Offset(4,6),
            blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: <Color>[
              this.color1,
              this.color2,
          ])
         ),
    );
  }
}