import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'dart:ui' as ui;
import 'dart:math';

import 'package:flutter/services.dart';

class Bird {
  Bird(int ms, this.rect, List<double> r, Size size)
      : startTimeMs = ms,
        scale = ui.lerpDouble(1, 0.3, r[0])!,
        rotation = pi * ui.lerpDouble(-1, 1, r[2])!,
        xSimulation = FrictionSimulation(0.75, r[1] * size.width,
            ui.lerpDouble(size.width / 2, -size.width / 2, r[1])!),
        ySimulation = GravitySimulation(ui.lerpDouble(10, 1000, r[0])!,
            -rect.height / 2, size.height + rect.height / 2, 100);

  final int startTimeMs;
  final Rect rect;
  final Simulation xSimulation;
  final Simulation ySimulation;
  final double scale;
  final double rotation;

  double x(int ms) => xSimulation.x(_normalizeTime(ms));

  double y(int ms) => ySimulation.x(_normalizeTime(ms));

  bool isDead(int ms) => ySimulation.isDone(_normalizeTime(ms));

  double _normalizeTime(int ms) =>
      (ms - startTimeMs) / Duration.millisecondsPerSecond;

  RSTransform transform(int ms, Size size) {
    final translateY = y(ms);
    return RSTransform.fromComponents(
      translateX: x(ms),
      translateY: translateY,
      anchorX: rect.width / 2,
      anchorY: rect.height / 2,
      rotation: rotation * translateY / size.height,
      scale: scale,
    );
  }
}

class FallingBirdsPainter extends CustomPainter {
  final ui.Image? sprite;
  final ValueNotifier<Duration> notifier;
  final imagePaint = Paint();
  final backgroundPaint = Paint()..color = Colors.black26;
  final random = Random();
  final birds = <Bird>[];
  int nextReport = 0;

  static const spriteRects = [
    Rect.fromLTRB(000, 0, 103, 140),
    Rect.fromLTRB(103, 0, 217, 140),
    Rect.fromLTRB(217, 0, 312, 140),
    Rect.fromLTRB(312, 0, 410, 140),
  ];

  FallingBirdsPainter(this.sprite, this.notifier) : super(repaint: notifier);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size);
    canvas.drawPaint(backgroundPaint);
    if (sprite != null) {
      final ms = DateTime.now().millisecondsSinceEpoch;
      if (random.nextDouble() < 0.15) {
        // drop new bird
        birds.add(Bird(ms, spriteRects[random.nextInt(4)],
            List.generate(3, (i) => random.nextDouble()), size));
      }

      final transforms = birds.map((bird) => bird.transform(ms, size)).toList();
      final rects = birds.map((bird) => bird.rect).toList();
      canvas.drawAtlas(
          sprite!, transforms, rects, null, null, null, imagePaint);

      // dead birds cleanup
      birds.removeWhere((bird) => bird.isDead(ms));

      if (ms >= nextReport) {
        nextReport = ms + 6000;
        print('flying birds population: ${birds.length}');
      }
    }
  }

  @override
  bool shouldRepaint(FallingBirdsPainter oldDelegate) => false;
}

class FooSpritePaint2 extends StatefulWidget {
  @override
  State<FooSpritePaint2> createState() => _FooSpritePaint2State();
}

class _FooSpritePaint2State extends State<FooSpritePaint2>
    with TickerProviderStateMixin {
  late Ticker ticker;
  final notifier = ValueNotifier(Duration.zero);
  ui.Image? sprite;

  @override
  void initState() {
    super.initState();
    ticker = Ticker(_tick);
    rootBundle
        .load('images/sprites2.png')
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
        foregroundPainter: FallingBirdsPainter(sprite, notifier),
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
