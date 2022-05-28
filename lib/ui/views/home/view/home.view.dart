import 'dart:math' as math;
import 'package:calorie_tracker/ui/utils/shape_border.dart';
import 'package:calorie_tracker/ui/widgets/calender.appbar.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home'),
      // ),
      extendBodyBehindAppBar: true,
      appBar: CalendarAppBar(
        onDateChanged: print,
        accent: MediaQuery.of(context).platformBrightness == Brightness.light
            ? Theme.of(context).primaryColor
            : Theme.of(context).primaryColorDark,
        backButton: false,
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now(),
        fullCalendar: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 130 + MediaQuery.of(context).viewPadding.top,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedRing(
                remainigDays: '1563',
                height: 150,
                percent: 0.9,
                strokeWidth: 15,
                color: MediaQuery.of(context).platformBrightness ==
                        Brightness.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColorDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AnimatedRing extends StatefulWidget {
  const AnimatedRing({
    required this.remainigDays,
    this.percent,
    this.color = Colors.white,
    this.height = 50,
    this.strokeWidth = 5,
    super.key,
  });
  final String remainigDays;
  final double? percent;
  final Color color;
  final double height;
  final double strokeWidth;

  @override
  State createState() => _AnimatedRingState();
}

class _AnimatedRingState extends State<AnimatedRing>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    );

    _controller
      ..addListener(() {
        setState(() {});
      })
      ..animateTo(widget.percent ?? 1.0);

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AnimatedRing oldWidget) {
    if (widget.percent == null) {
      _controller.animateTo(1);
    }
    if (oldWidget.percent != widget.percent) {
      _controller.animateTo(widget.percent ?? 1.0);
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
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: CustomPaint(
              painter: _RingPanter(
                _controller.value,
                widget.strokeWidth,
                widget.color,
              ),
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Center(
                  child: SizedBox(
                    width: widget.height - widget.strokeWidth - 1,
                    height: widget.height - widget.strokeWidth - 1,
                    child: Card(
                      elevation: 30,
                      shape: kRoundedCardBorder(radius: widget.height),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.remainigDays,
                            style:
                                Theme.of(context).textTheme.headline5?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5,
                                    ),
                          ),
                          Text(
                            'KCAL Left',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                  ),
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
  );
  final double percent;
  final Color color;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      math.pi * 2,
      false,
      paint,
    );
    paint.color = color;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -math.pi / 2,
      -2 * math.pi * percent,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_RingPanter oldCategory) {
    return percent != oldCategory.percent || color != oldCategory.color;
  }
}
