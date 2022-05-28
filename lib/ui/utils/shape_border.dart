import 'package:flutter/widgets.dart';

ShapeBorder kRoundedCardBorder({
  double radius = 12,
  BorderSide side = BorderSide.none,
}) =>
    RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(radius),
      ),
      side: side,
    );
