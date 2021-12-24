import 'package:flutter/material.dart';
import 'colors.dart';

class BottomBar extends StatelessWidget {
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

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    var gradient = LinearGradient(
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter, // 10% of the width, so there are ten blinds.
      colors: [Colors.green.shade300, Colors.green.shade200], // whitish to gray
      tileMode: TileMode.clamp, // repeats the gradient over the canvas
    );

    var paint = Paint()
      ..shader = gradient.createShader(rect);

//    paint.color = Colors.green[800];
//    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(
        size.width * 0.42, size.height * 1,
        size.width * 0.65, size.height * 0.2);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * -0.5,
        size.width * 1.00, size.height * -0.4);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);


//    canvas.drawShadow(path.shift(Offset(0, -3)), Colors.grey, 15, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}