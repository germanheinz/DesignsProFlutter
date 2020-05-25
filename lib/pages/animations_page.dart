import 'package:flutter/material.dart';
import 'dart:math' as Math;

class AnimationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SquareAnimated()),
    );
  }
}

class SquareAnimated extends StatefulWidget {

  @override
  _SquareAnimatedState createState() => _SquareAnimatedState();
}

class _SquareAnimatedState extends State<SquareAnimated> with SingleTickerProviderStateMixin{
  
  AnimationController animationController;
  Animation<double> rotation;
  Animation<double> opacity;
  Animation<double> moveRight;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(vsync: this, duration: Duration(milliseconds: 3000));
    rotation = Tween(begin: 0.0, end:2.0 * Math.pi).animate(
      CurvedAnimation(parent: animationController, curve: Curves.elasticOut)
    );
    opacity = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Interval(0, 0.25, curve: Curves.easeOut))
    );
    moveRight = Tween(begin: -100.0, end: 100.0).animate(
       CurvedAnimation(parent: animationController, curve: Interval(0, 0.20, curve: Curves.easeOut))
    );
    
    animationController.addListener( () => {
      print(animationController.status),
      if(animationController.status == AnimationStatus.completed){
        animationController.reverse()
      }
    });
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    //Boton de reproduccion - Play
    animationController.repeat();

     return AnimatedBuilder(
       animation: animationController,
       child: Rectangulo(),
       builder: (BuildContext context, Widget childRectangulo) {
         print(rotation.value.toString());
         return Transform.translate(
            offset: Offset(moveRight.value, 0),
            child: Transform.rotate(
            angle: rotation.value,
            //  child: Rectangulo(),
            child: Opacity(
               opacity: opacity.value,
               child: childRectangulo, 
             ),
            ),
         );
       },
     );
  }
  
}

class Rectangulo extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      color: Colors.red
    ),
  );
  }
}