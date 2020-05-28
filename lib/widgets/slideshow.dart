import 'package:designs_pro/lab/slideshow_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Slideshow extends StatelessWidget {

  final List<Widget> slides;
  final bool dotsUp;
  final Color primaryColor;
  final Color secondyColor;
  final double bulletPrimary;
  final double bulletSecondary;

  Slideshow({@required this.slides,
                       this.dotsUp          = false,
                       this.primaryColor    = Colors.blue,
                       this.secondyColor    = Colors.grey,
                       this.bulletPrimary   = 12.0,
                       this.bulletSecondary = 12.0
            });


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new SlideShowModel(),
      child: SafeArea(
          child: Center(
          child: Builder(
            builder: (BuildContext context) {

            Provider.of<SlideShowModel>(context).primaryColor = this.primaryColor;

            Provider.of<SlideShowModel>(context).secondyColor = this.secondyColor;

            Provider.of<SlideShowModel>(context).bulletPrimary = this.bulletPrimary;

            Provider.of<SlideShowModel>(context).bulletSecondary= this.bulletSecondary;

            return _CreateSlideshowStructure(slides: slides, dotsUp: dotsUp);
            },
          )
        ),
      ),
      );
  }
}

class _CreateSlideshowStructure extends StatelessWidget {
  const _CreateSlideshowStructure({
    Key key,
    this.dotsUp,
    @required this.slides,

  }) : super(key: key);

  final List<Widget> slides;
  final bool dotsUp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // if(this.dotsUp) _Dots(this.slides.length),
        Expanded(
          child: _Slides(this.slides),
        ),
        //if(!this.dotsUp) _Dots(this.slides.length),
        _Dots(this.slides.length),

      ],
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
      Provider.of<SlideShowModel>(context, listen: false).currentPage = pageViewController.page
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

  _Dots(this.dotsNumbers);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: double.infinity,
     height: 50,
     child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(this.dotsNumbers, (index) => _Dot(index)),
     ),
    );
  }
}

class _Dot extends StatelessWidget {

  final int index;

  _Dot(this.index);

  @override
  Widget build(BuildContext context) {

    final slideShowModel = Provider.of<SlideShowModel>(context);

    double bulletSize = 0;
    Color color;

    if(slideShowModel.currentPage >= index - 0.5 && slideShowModel.currentPage < index + 0.5){
      bulletSize = slideShowModel.bulletPrimary;
      color      = slideShowModel.primaryColor;
    }else{
      bulletSize = slideShowModel.bulletSecondary;
      color      = slideShowModel.secondyColor;
    }


    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      height: bulletSize,
      width: bulletSize,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,

      ),
    );
  }
}
class SlideShowModel with ChangeNotifier{
  double _currentPage     = 0;
  Color  _primaryColor    = Colors.blue;
  Color  _secondyColor    = Colors.red;
  double _bulletPrimary = 12.0;
  double _bulletSecondary = 12.0;


  double get currentPage => this._currentPage;

  set currentPage(double currentPage){
    this._currentPage = currentPage;
    notifyListeners();
  }
  Color get primaryColor => this._primaryColor;

  set primaryColor(Color primaryColor){
    this._primaryColor = primaryColor;
    // notifyListeners();
  }
  Color get secondyColor => this._secondyColor;

  set secondyColor(Color secondyColor){
    this._secondyColor = secondyColor;
    // notifyListeners();
  }
  double get bulletPrimary => this._bulletPrimary;

  set bulletPrimary(double bulletPrimary){
    this._bulletPrimary = bulletPrimary;
    // notifyListeners();
  }
  double get bulletSecondary => this._bulletSecondary;

  set bulletSecondary(double bulletSecondary){
    this._bulletSecondary = bulletSecondary;
    // notifyListeners();
  }
}