
import 'package:designs_pro/widgets/header_sport.dart';
import 'package:flutter/material.dart';


class SportsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: HeaderSport(
       icon: Icons.add,
       title: 'test',
       subTitle: 'test2',
       color1: Colors.grey,
       color2: Colors.indigo,
     )
   );
  }
}