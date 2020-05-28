import 'package:flutter/material.dart';


class HeaderSport extends StatelessWidget {

  final colorTextHeader = Colors.white.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _BackgroundHeader(),
        Positioned(
          top: -50,
          left: -80,
          child: Icon(Icons.add, size: 250, color: Colors.white.withOpacity(0.2)),
        ),
        Column(
          children: [
            SizedBox(height: 80, width: double.infinity),
            Text('Hsz Solicitado', style: TextStyle(fontSize: 15, color: colorTextHeader)),
            SizedBox(height: 20),
            Text('Asistencia Medica', style: TextStyle(fontSize: 20, color: colorTextHeader, fontWeight: FontWeight.bold)),
            Icon(Icons.add, size: 100, color: Colors.white),
          ],
        )
      ],
    );
  }
}

class _BackgroundHeader extends StatelessWidget {
  const _BackgroundHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
}