
import 'package:designs_pro/widgets/SectionButton.dart';
import 'package:designs_pro/widgets/header_sport.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}


class SportsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

      final items = <ItemBoton>[
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
      new ItemBoton( FontAwesomeIcons.carCrash, 'Motor Accident', Color(0xff6989F5), Color(0xff906EF5) ),
      new ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', Color(0xff66A9F2), Color(0xff536CF6) ),
      new ItemBoton( FontAwesomeIcons.theaterMasks, 'Theft / Harrasement', Color(0xffF2D572), Color(0xffE06AA3) ),
      new ItemBoton( FontAwesomeIcons.biking, 'Awards', Color(0xff317183), Color(0xff46997D) ),
    ];
    

    List<Widget> itemMap = items.map(
      (item) => SectionButton(
        color1: item.color1,
        color2: item.color2,
        icon  : item.icon,
        text  : item.texto,
        onPress: ()=> {print('Hola')},
      )).toList();
    
    return Scaffold(
    body: Stack(
      children: [
        Container(
            margin: EdgeInsets.only(top: 170),
            child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget> [
              SizedBox(height: 80),
              ...itemMap
              // ButtonSectionTemp(),
              
              // ButtonSectionTemp(),
              
              // ButtonSectionTemp(),
            ],
          ),
        ),
        _Header()
      ],
    ),
   );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeaderSport(icon: Icons.beach_access, subTitle: 'New Sports',title: 'Sport',);
  }
}

class ButtonSectionTemp extends StatelessWidget {
  const ButtonSectionTemp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionButton(
          icon: Icons.add,
          text:  'test',
          color1: Colors.white,
          color2: Colors.red,
          onPress: (){print('Click!');},
        );
  }
}

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderSport(
          icon: Icons.add,
          title: 'test',
          subTitle: 'test2',
          color1: Colors.grey,
          color2: Colors.indigo,
        ),
        Positioned(
          right: 0,
          top: 0,
          // child: FaIcon(FontAwesomeIcons.addressBook, color: Colors.white, size: 200,)
          child: Icon(Icons.beenhere, color: Colors.white, size: 100),
        )
      ],
    );
    
  }
}