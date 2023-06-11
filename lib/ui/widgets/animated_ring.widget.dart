import 'dart:math';

import 'package:calorie_tracker/ui/utils/shape_border.dart';
import 'package:flutter/material.dart';

class AnimatedRing extends StatefulWidget {
  const AnimatedRing({
    required this.centerWidget,
    required this.percent,
    this.color = Colors.white,
    this.height = 50,
    this.strokeWidth = 5,
    super.key,
  });
  final Widget centerWidget;

  final double percent;
  final Color color;
  final double height;
  final double strokeWidth;

  @override
  State createState() => _AnimatedRingState();
}

class _AnimatedRingState extends State<AnimatedRing>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  double? lastPercent;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 10,
      duration: Duration(milliseconds: widget.percent > 1 ? 2200 : 1500),
    );

    _controller
      ..addListener(() {
        setState(() {});
      })
      ..animateTo(widget.percent);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AnimatedRing oldWidget) {
    // if (widget.percent == null) {
    //   _controller.animateTo(1);
    // }
    if (oldWidget.percent != widget.percent) {
      _controller.animateTo(widget.percent,
          duration: Duration(milliseconds: widget.percent > 1 ? 1500 : 1000));
      lastPercent = widget.percent;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.height,
      height: widget.height,
      child: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        shape: kRoundedCardBorder(radius: widget.height),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: CustomPaint(
            painter: _RingPanter(
                _controller.value,
                widget.strokeWidth,
                widget.color,
                widget.percent > 1,
                lastPercent == null ? null : lastPercent! > 1),
            child: Center(
              child: SizedBox(
                width: widget.height - widget.strokeWidth - 7,
                height: widget.height - widget.strokeWidth - 7,
                child: Card(
                  elevation: 0.5,
                  shape: kRoundedCardBorder(
                    radius: widget.height,
                  ),
                  child: widget.centerWidget,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RingPanter extends CustomPainter {
  _RingPanter(
    this.percent,
    this.strokeWidth,
    this.color,
    this.isOverflown,
    this.wasOverflown,
  );
  final double percent;
  final Color color;
  final double strokeWidth;
  final bool isOverflown;
  final bool? wasOverflown;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.width / 2, size.height / 2);
    final center = Offset(size.width / 2, size.height / 2);
    final paint = Paint()
      ..color = color.withOpacity(0.20)
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true
      ..strokeWidth = strokeWidth
      ..blendMode = BlendMode.srcOver
      // ..invertColors = true
      ..strokeCap = StrokeCap.butt;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      pi * 2,
      false,
      paint,
    );

    // If percent is greater than 1, then we draw a full circle and then draw the arc from 0 to the 1-percent(just like iOS fitness app where if 120% goal is achieved then the ring is full and then the arc is drawn from 0 to 20%)
    // if (isOverflown) {
    paint.strokeCap = StrokeCap.round;
    final radianToWhichCircleIsDrawn = _percentToRadian(percent);
    final noOfLoop = 100;

    var sweepAngle = _degreeToRadian(360 / noOfLoop);

    //Additional loops to reach radianToWhichCircleIsDrawn
    final additionalLoops =
        (radianToWhichCircleIsDrawn / sweepAngle).ceil() - noOfLoop;

    final totalLoops = noOfLoop + additionalLoops;

    //https://stackoverflow.com/questions/40619476/javascript-generate-different-shades-of-the-same-color/40619637#40619637
    final maximum = max(max(color.red, max(color.green, color.blue)), 1);

    var step = 255 / (maximum * totalLoops);

    for (int i = 0; i < totalLoops; i++) {
      final startAngle = -_degreeToRadian(90) + sweepAngle * i;
      final isLastLoop = i == totalLoops - 1;
      final color = Color.fromRGBO(
        (this.color.red * step * (i + 1)).round(),
        (this.color.green * step * (i + 1)).round(),
        (this.color.blue * step * (i + 1)).round(),
        1,
      );
      if (isLastLoop) {
        paint
          ..color = color
          ..blendMode = BlendMode.srcATop
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke;
        sweepAngle = _degreeToRadian((360 / noOfLoop) - 4);
        print(
          'startAngle: $startAngle , radianToWhichCircleIsDrawn: $radianToWhichCircleIsDrawn, additionalLoops: $additionalLoops',
        );
      } else {
        final newColor = isOverflown || (wasOverflown == true)
            ? color
            : Color.alphaBlend(this.color, Colors.white);
        paint
          ..blendMode = BlendMode.srcOver
          ..color = newColor;
      }

      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
      if (isLastLoop) {
        final offset = Offset(
          center.dx +
              radius *
                  cos(
                    _degreeToRadian(
                      _radianToDegree(startAngle) + _radianToDegree(sweepAngle),
                    ),
                  ),
          center.dy +
              radius *
                  sin(
                    _degreeToRadian(
                      _radianToDegree(startAngle) + _radianToDegree(sweepAngle),
                    ),
                  ),
        );
        canvas.drawCircle(
          offset,
          strokeWidth / 2.4,
          Paint()
            ..strokeWidth = 10
            ..color = Colors.white
            ..maskFilter = MaskFilter.blur(BlurStyle.normal, 3)
            ..style = PaintingStyle.fill,
        );
        canvas.drawCircle(
          offset,
          strokeWidth / 2.4,
          Paint()
            ..strokeWidth = 10
            ..color = Colors.white
            // ..maskFilter = MaskFilter.blur(BlurStyle.normal, 3)
            ..style = PaintingStyle.fill,
        );
      }
    }
  }

  @override
  bool shouldRepaint(_RingPanter oldCategory) {
    return percent != oldCategory.percent || color != oldCategory.color;
  }

  // Function which radian value from percentage
  double _percentToRadian(double percent) {
    return _degreeToRadian(percent * 360);
  }

  // Function to return degree value from radian
  double _radianToDegree(double radian) {
    return radian * 180 / pi;
  }

  // Function which gives radion value from degree
  double _degreeToRadian(double degree) {
    return degree * pi / 180;
  }
}
