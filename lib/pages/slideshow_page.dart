import 'package:designs_pro/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideshowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slideshow(
        bulletPrimary:15,
        bulletSecondary:13,
        dotsUp: false,
        primaryColor: Colors.blue,
        secondyColor: Colors.red,
        slides: <Widget>[
          SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
          
          SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
          
          SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
          
          SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
        ]
      ),
    );
  }
}
