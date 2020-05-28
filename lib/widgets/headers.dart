import 'package:flutter/material.dart';

// class HeaderSquare extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       color: Color(0xff615AAB),
//     );
//   }
// }
// class HeaderCircle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       decoration: BoxDecoration(
//         color: Color(0xff615AAB),
//         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
//       ),
//     );
//   }
// }
// class HeaderSquare extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       // color: Color(0xff615AAB),
//       child: CustomPaint(
//         painter: _HeaderDiagonalPainter(),
//       ),
//     );
//   }        
// }
        
// class _HeaderDiagonalPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {

//     final pencil = new Paint();

//     pencil.color = Color(0xff615AAB);
//     pencil.style = PaintingStyle.fill;
//     pencil.strokeWidth = 20;

//     final path = new Path();
//     path.moveTo(0, size.height * 0.5);
//     path.lineTo(size.width, size.height * 0.4);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//     path.lineTo(0, size.height * 0.5);
   
//     canvas.drawPath(path, pencil);
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

// }

// TRIANGLE

// class HeaderTriangle extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       // color: Color(0xff615AAB),
//       child: CustomPaint(
//         painter: _HeaderTrianglelPainter(),
//       ),
//     );
//   }        
// }
        
// class _HeaderTrianglelPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {

//     final pencil = new Paint();

//     pencil.color = Color(0xff615AAB);
//     pencil.style = PaintingStyle.fill;
//     pencil.strokeWidth = 20;

//     final path = new Path();
//     path.moveTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, 0);

//     canvas.drawPath(path, pencil);
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

// }

// HEADER PEAK

// class HeaderPeak extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       // color: Color(0xff615AAB),
//       child: CustomPaint(
//         painter: _HeaderPeaklPainter(),
//       ),
//     );
//   }        
// }
        
// class _HeaderPeaklPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {

//     final pencil = new Paint();

//     pencil.color = Color(0xff615AAB);
//     pencil.style = PaintingStyle.fill;
//     pencil.strokeWidth = 20;

//     final path = new Path();
//     path.moveTo(0, 0);
//     path.lineTo(0, size.height * 0.28);
//     path.lineTo(size.width * 0.5, size.height * 0.35);
//     path.lineTo(size.width, size.height * 0.28);
//     path.lineTo(size.width, 0);
    
//     // path.lineTo(0, 0);

//     canvas.drawPath(path, pencil);
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

// }

// HEADER CURVE

// class HeaderCurve extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       // color: Color(0xff615AAB),
//       child: CustomPaint(
//         painter: _HeaderCurvePainter(),
//       ),
//     );
//   }        
// }
        
// class _HeaderCurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {

//     final pencil = new Paint();

//     pencil.color = Color(0xff615AAB);
//     pencil.style = PaintingStyle.fill;
//     pencil.strokeWidth = 20;

//     final path = new Path();
//     path.lineTo(0, size.height * 0.25);
//     path.quadraticBezierTo(size.width * 0.5, size.height * 0.40, size.width, size.height * 0.25);
//     path.lineTo(size.width, 0);
    
    
//     // path.lineTo(0, 0);

//     canvas.drawPath(path, pencil);
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

// }

// HEADER WAVE

// class HeaderWave extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: double.infinity,
//       width: double.infinity,
//       // color: Color(0xff615AAB),
//       child: CustomPaint(
//         painter: HeaderWavePainter(),
//       ),
//     );
//   }        
// }
        
// class HeaderWavePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {

//     final pencil = new Paint();

//     pencil.color = Color(0xff615AAB);
//     pencil.style = PaintingStyle.fill;
//     pencil.strokeWidth = 20;

//     final path = new Path();
//     path.lineTo(0, size.height * 0.25);
//     path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
//     path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
//     path.lineTo(size.width, 0);
    
    
//     // path.lineTo(0, 0);

//     canvas.drawPath(path, pencil);
    
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }

// }

// HEADER WAVES WITH GRADIENT

class HeaderWaveGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB),
      child: CustomPaint(
        painter: HeaderWaveGradientPainter(),
      ),
    );
  }        
}
        
class HeaderWaveGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = new Rect.fromCircle(
      center: Offset(0.0, 55.0),
      radius: 180
    );

    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ],
      stops: [
        0.2,
        0.5,
        1.0,
      ]
    );

    final pencil = new Paint()..shader = gradient.createShader(rect);

    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 20;

    final path = new Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    
    
    // path.lineTo(0, 0);

    canvas.drawPath(path, pencil);
    
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}
