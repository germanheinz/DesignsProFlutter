import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: _Slides()
            ),
             _Dots(),
          ],
        )
      )
    );
  }
}

class _Slides extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: <Widget>[
          SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
          SvgPicture.asset('assets/svg/undraw_cohort_analysis_stny.svg'),
          SvgPicture.asset('assets/svg/undraw_nature_on_screen_xkli.svg'),
        ],
      ),
    );
  }
}
class _Dots extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     height: 50,
     child: Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Dot(),
         Dot(),
         Dot(),
       ],
     ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.circle,
        
      ),
    );
  }
}