import 'package:flutter/material.dart';
import 'colors.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 300.0,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    var gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment(1.0, 0.0), // 10% of the width, so there are ten blinds.
      colors: [Colors.green.shade200, Colors.green.shade200], // whitish to gray
      tileMode: TileMode.mirror, // repeats the gradient over the canvas
    );

    var paint = Paint()
      ..shader = gradient.createShader(rect);

    Path path = Path();
    path =Path();
    path.lineTo(0, size.height* 0.64);
    path.quadraticBezierTo(
        size.width*0.20, size.height*0.64,
        size.width*0.30, size.height*0.35);
    path.quadraticBezierTo(
        size.width * 0.42, size.height * -0.04,
        size.width * 0.90, size.height * 0.00);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
//    canvas.drawShadow(path.shift(Offset(0, 2)), Colors.grey[200], 2, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}