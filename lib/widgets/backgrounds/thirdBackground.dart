import 'package:flutter/material.dart';
import 'package:health_bag/globals/myColors.dart';

class ThirdBackground extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyColors.blue,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
        ),
      ),
    );
  }
}

class OpenPainter extends CustomPainter{
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = MyColors.blueLighter
      ..style = PaintingStyle.fill;
    canvas.drawOval(Rect.fromLTWH(0, 0, size.height/1.5, size.width/1.5),paint1);

    var paint2 = Paint()
      ..color = MyColors.red
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width,60), 50, paint2);

    var paint3 = Paint()
      ..color = MyColors.white
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.0,
        size.width * 0.5, size.height * 0.1);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.2,
        size.width * 1.0, size.height * 0.1);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint3);
  }
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}