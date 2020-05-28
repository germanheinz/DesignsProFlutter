import 'package:flutter/material.dart';


class SectionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         _BackgroundSectionButton(),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           
           children: [
              SizedBox(height: 140, width: 40),
              Icon(Icons.music_video,color: Colors.white, size: 50),
              SizedBox(width: 20),
              Expanded(child: Text('Testing', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)),
              Icon(Icons.arrow_forward,color: Colors.white, size: 35),
              SizedBox(width: 40),
           ],
         )
      ],
    );
  }
}

class _BackgroundSectionButton extends StatelessWidget {
  const _BackgroundSectionButton({
    Key key,
  }) : super(key: key);

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
                child: Icon(Icons.music_video, size: 100, color: Colors.white.withOpacity(0.2),),
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
              Colors.red,
              Colors.orange,
          ])
         ),
    );
  }
}