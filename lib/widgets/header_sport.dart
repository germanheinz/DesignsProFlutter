import 'package:flutter/material.dart';


class HeaderSport extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(115), bottomRight: Radius.circular(115)),
          gradient: LinearGradient(
            colors: <Color> [
              Colors.red,
              Colors.orange
            ] 
          )
        ),
      )
   );
  }
}