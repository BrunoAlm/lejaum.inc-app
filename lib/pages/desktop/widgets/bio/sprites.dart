import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class FooSpritePaint extends StatefulWidget {
  @override
  State<FooSpritePaint> createState() => _FooSpritePaintState();
}

class _FooSpritePaintState extends State<FooSpritePaint>
    with TickerProviderStateMixin {
  late Ticker ticker;
  final notifier = ValueNotifier(Duration.zero);
  ui.Image? sprite;

  @override
  void initState() {
    super.initState();
    ticker = Ticker(_tick);
    rootBundle
        .load('images/sprites.png')
        .then((data) => decodeImageFromList(data.buffer.asUint8List()))
        .then(_setSprite);
  }

  _tick(Duration d) => notifier.value = d;

  _setSprite(ui.Image image) {
    setState(() {
      // print('image: $image');
      sprite = image;
      ticker.start();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        foregroundPainter: SpritePainter(sprite, notifier),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: TextButton(
            onPressed: () => ticker.isTicking ? ticker.stop() : ticker.start(),
            child: const Text('click to stop / start', textScaleFactor: 1.5),
          ),
        ),
      ),
    );
  }
}

class SpritePainter extends CustomPainter {
  final ui.Image? sprite;
  final ValueNotifier<Duration> notifier;
  final p = Paint();

  SpritePainter(this.sprite, this.notifier) : super(repaint: notifier);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    if (sprite != null) {
      final ms = notifier.value.inMilliseconds;
      final frame = ms ~/ 80;
      // print(frame);
      final frames = [frame, frame + 2, frame + 4].map((f) => f % 6).toList();
      final spritePhases = [
        phase(size.width, ms * 0.066),
        phase(size.width, ms * 0.075 + 40),
        phase(size.width, ms * 0.075 + 80),
      ];
      final transforms = [
        for (int i = 0; i < spritePhases.length; i++)
          ui.RSTransform(1, 0, spritePhases[i][0], size.height / 2 - 45),
      ];
      final rects = [
        for (int i = 0; i < spritePhases.length; i++)
          Rect.fromLTWH(frames[i] * 100, spritePhases[i][1] * 100, 100, 100),
      ];
      canvas.drawAtlas(sprite!, transforms, rects, null, null, null, p);
    }
  }

  List<double> phase(double width, double x) {
    final w = width + 100;
    x = x % (2 * w);
    return x < w ? [x - 100, 0] : [2 * w - x - 100, 1];
  }

  @override
  bool shouldRepaint(SpritePainter oldDelegate) => false;
}
