import 'package:designs_pro/lab/slideshow_page.dart';
import 'package:designs_pro/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Slideshow extends StatelessWidget {

  List<Widget> slides;
  final bool dotsUp;
  Color primaryColor;
  Color secondyColor;

  Slideshow({@required this.slides, this.primaryColor, this.secondyColor, this.dotsUp = false});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new SliderModel(),
      child: SafeArea(
          child: Center(
          child: Column(
            children: <Widget>[
              if(this.dotsUp) _Dots(this.slides.length,this.primaryColor, this.secondyColor),
              Expanded(
                child: _Slides(this.slides),
              ),
              if(!this.dotsUp) _Dots(this.slides.length,this.primaryColor, this.secondyColor),
              
            ],
          )
        ),
      ),
      );
  }
}


class _Slides extends StatefulWidget {

  final List<Widget> slides;


  _Slides(this.slides);
  
  @override
  __SlidesState createState() => __SlidesState();

}

class __SlidesState extends State<_Slides> {
  
   @override
  void initState() {
    super.initState();
    pageViewController.addListener(() => {
      // print('Current Page: ${pageViewController.page}'),
      Provider.of<SliderModel>(context, listen: false).currentPage = pageViewController.page
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: pageViewController,
        // children: <Widget>[
        //   SvgPicture.asset('assets/svg/undraw_at_home_octe.svg'),
        //   SvgPicture.asset('assets/svg/undraw_cohort_analysis_stny.svg'),
        //   SvgPicture.asset('assets/svg/undraw_nature_on_screen_xkli.svg'),
        // ],
        children: widget.slides.map((slide) => _Slide(slide)).toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final Widget slide;

  _Slide(this.slide);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: slide
    );
  }
}

class _Dots extends StatelessWidget {
  
  final int dotsNumbers;
  final Color primaryColor;
  final Color secondyColor;

  _Dots(this.dotsNumbers, this.primaryColor, this.secondyColor);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     height: 50,
     child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(this.dotsNumbers, (index) => _Dot(index, this.primaryColor, this.secondyColor)),
     ),
    );
  }
}

class _Dot extends StatelessWidget {

  final int index;
  final Color primaryColor;
  final Color secondyColor;

  _Dot(this.index, this.primaryColor, this.secondyColor);

  @override
  Widget build(BuildContext context) {

    final pageViewIndex = Provider.of<SliderModel>(context).currentPage;
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: 10,
      width: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: (pageViewIndex >= index - 0.5 && pageViewIndex < index + 0.5) ? this.primaryColor : this.secondyColor,
        shape: BoxShape.circle,
        
      ),
    );
  }
}