import 'package:flutter/material.dart';


class SectionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _BackgroundSectionButton();
  }
}

class _BackgroundSectionButton extends StatelessWidget {
  const _BackgroundSectionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black87.withOpacity(0.2),
            offset: Offset(4,6),
            blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: <Color>[
              Colors.red,
              Colors.orange,
          ])
         ),
    );
  }
}