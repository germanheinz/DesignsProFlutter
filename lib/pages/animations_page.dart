import 'package:flutter/material.dart';

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

class _SquareAnimatedState extends State<SquareAnimated> {
  @override
  Widget build(BuildContext context) {
    return Rectangulo();
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