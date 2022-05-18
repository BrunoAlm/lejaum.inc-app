import 'package:flutter/material.dart';
import 'dart:math' as math;

class BioBackground extends StatefulWidget {
  const BioBackground({Key? key}) : super(key: key);

  @override
  State<BioBackground> createState() => _BioBackgroundState();
}

class _BioBackgroundState extends State<BioBackground>
    with TickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? controller;
  Tween<double> _rotationTween = Tween(begin: -math.pi, end: math.pi);
  var _sides = 3.0;
  var _radius = 100.0;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    );

    animation = _rotationTween.animate(controller!)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller!.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller!.forward();
        }
      });

    controller!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      foregroundPainter: PointPainter(_radius, animation!.value),
      painter: CirclePainter(_radius),
      child: Container(),
    );
  }
}

// FOR PAINTING THE CIRCLE
class CirclePainter extends CustomPainter {
  final double radius;
  CirclePainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.purpleAccent
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var path = Path();
    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: radius,
    ));
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

// FOR PAINTING THE TRACKING POINT
class PointPainter extends CustomPainter {
  final double radius;
  final double radians;
  PointPainter(this.radius, this.radians);

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var pointPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    var innerCirclePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final textSpan = TextSpan(
      text:
          "(${(radius * math.cos(radians)).round()}, ${(radius * math.sin(radians)).round()})",
      style: TextStyle(color: Colors.black, fontSize: 16),
    );
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: 100,
    );

    var path = Path();

    Offset center = Offset(size.width / 2, size.height / 2);

    // path.moveTo(center.dx, center.dy);
    path.moveTo(0, 0);

    Offset pointOnCircle = Offset(
      // radius * math.cos(radians) + center.dx,
      size.width,
      // radius,
      radius * math.sin(radians) + center.dy * 2,
    );

    // For showing the point moving on the circle
    canvas.drawCircle(pointOnCircle, 10, pointPaint);

    // For drawing the inner circle
    if (math.cos(radians) < 0.0) {
      canvas.drawCircle(center, -radius * math.cos(radians), innerCirclePaint);
      textPainter.paint(
        canvas,
        pointOnCircle + Offset(-100, 10),
      );
    } else {
      canvas.drawCircle(center, radius * math.cos(radians), innerCirclePaint);
      textPainter.paint(
        canvas,
        pointOnCircle + Offset(10, 10),
      );
    }

    path.lineTo(pointOnCircle.dx, pointOnCircle.dy);
    path.lineTo(pointOnCircle.dx, center.dy);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
