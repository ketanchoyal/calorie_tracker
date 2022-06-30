// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';

class SwipeDetector extends StatelessWidget {
  const SwipeDetector({
    required this.child,
    this.onSwipeUp,
    this.onSwipeDown,
    this.onSwipeLeft,
    this.onSwipeRight,
    super.key,
  });
  static const double minMainDisplacement = 50;
  static const double maxCrossRatio = 0.75;
  static const double minVelocity = 300;

  final Widget child;

  final VoidCallback? onSwipeUp;
  final VoidCallback? onSwipeDown;
  final VoidCallback? onSwipeLeft;
  final VoidCallback? onSwipeRight;

  @override
  Widget build(BuildContext context) {
    DragStartDetails? panStartDetails;
    DragUpdateDetails? panUpdateDetails;

    return GestureDetector(
      onTapDown: (_) => panUpdateDetails =
          null, // This prevents two fingers quick taps from being detected as a swipe
      behavior: HitTestBehavior
          .opaque, // This allows swipe above other clickable widgets
      child: child,
      onPanStart: (startDetails) => panStartDetails = startDetails,
      onPanUpdate: (updateDetails) => panUpdateDetails = updateDetails,
      onPanEnd: (endDetails) {
        if (panStartDetails == null || panUpdateDetails == null) return;

        final dx = panUpdateDetails!.globalPosition.dx -
            panStartDetails!.globalPosition.dx;
        final dy = panUpdateDetails!.globalPosition.dy -
            panStartDetails!.globalPosition.dy;

        final panDurationMiliseconds =
            panUpdateDetails!.sourceTimeStamp!.inMilliseconds -
                panStartDetails!.sourceTimeStamp!.inMilliseconds;

        double mainDis, crossDis, mainVel;
        final isHorizontalMainAxis = dx.abs() > dy.abs();

        if (isHorizontalMainAxis) {
          mainDis = dx.abs();
          crossDis = dy.abs();
        } else {
          mainDis = dy.abs();
          crossDis = dx.abs();
        }

        mainVel = 1000 * mainDis / panDurationMiliseconds;

        // if (mainDis < minMainDisplacement) return;
        // if (crossDis > maxCrossRatio * mainDis) return;
        // if (mainVel < minVelocity) return;

        if (mainDis < minMainDisplacement) {
          debugPrint(
            'SWIPE DEBUG | Displacement too short. Real: $mainDis - Min: $minMainDisplacement',
          );
          return;
        }
        if (crossDis > maxCrossRatio * mainDis) {
          debugPrint(
            'SWIPE DEBUG | Cross axis displacemnt bigger than limit. Real: $crossDis - Limit: ${mainDis * maxCrossRatio}',
          );
          return;
        }
        if (mainVel < minVelocity) {
          debugPrint(
            'SWIPE DEBUG | Swipe velocity too slow. Real: $mainVel - Min: $minVelocity',
          );
          return;
        }

        // dy < 0 => UP -- dx > 0 => RIGHT
        if (isHorizontalMainAxis) {
          if (dx > 0) {
            onSwipeRight?.call();
          } else {
            onSwipeLeft?.call();
          }
        } else {
          if (dy < 0) {
            onSwipeUp?.call();
          } else {
            onSwipeDown?.call();
          }
        }
      },
    );
  }
}
