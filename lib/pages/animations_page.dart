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

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end:2.0 * Math.pi).animate(animationController);
    
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
      //  child: child,
       builder: (BuildContext context, Widget child) {
         print(rotation.value.toString());
         return Transform.rotate(
           angle: rotation.value,
           child: Rectangulo()
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