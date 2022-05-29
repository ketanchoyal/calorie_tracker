import 'dart:math' as math;
import 'package:calorie_tracker/ui/utils/shape_border.dart';
import 'package:calorie_tracker/ui/widgets/calender.appbar.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:openfoodfacts/utils/CountryHelper.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  Future<Product?> getProduct() async {
    const barcode = '064420000774';

    final configuration = ProductQueryConfiguration(
      barcode,
      language: OpenFoodFactsLanguage.ENGLISH,
      country: OpenFoodFactsCountry.CANADA,
      fields: [ProductField.ALL],
    );
    final result = await OpenFoodAPIClient.getProduct(configuration);

    if (result.status == 1) {
      print(result.product?.nutriments?.proteins);
      return result.product;
    } else {
      throw Exception('product not found, please insert data for $barcode');
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).brightness == Brightness.light
        ? Theme.of(context).primaryColor
        : Theme.of(context).primaryColorDark;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CalendarAppBar(
        onDateChanged: print,
        accent: primaryColor,
        backButton: false,
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now(),
        fullCalendar: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getProduct,
        backgroundColor: primaryColor,
        child: const Icon(
          FontAwesomeIcons.qrcode,
          color: Colors.white,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 130 + MediaQuery.of(context).viewPadding.top,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CalorieWidget(
                calories: '1563',
                icon: FontAwesomeIcons.bowlRice,
                iconColor: primaryColor,
                subtitle: 'EATEN',
              ),
              AnimatedRing(
                centerWidget: const CalorieWidget(
                  calories: '1563',
                  icon: FontAwesomeIcons.boltLightning,
                  subtitle: 'CAL LEFT',
                ),
                height: 150,
                percent: 0.9,
                strokeWidth: 16,
                color: primaryColor,
              ),
              CalorieWidget(
                calories: '323',
                icon: FontAwesomeIcons.fireFlameCurved,
                iconColor: primaryColor,
                subtitle: 'BURNED',
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                _buildSingleNutrition(
                  context,
                  amount: 160,
                  color: Colors.purple,
                  nutrition: 'Protein',
                  isLeftAmount: false,
                  percent: 0.5,
                ),
                _buildSingleNutrition(
                  context,
                  amount: 120,
                  color: Colors.greenAccent,
                  nutrition: 'Carbs',
                  isLeftAmount: false,
                  percent: 0.2,
                ),
                _buildSingleNutrition(
                  context,
                  amount: 80,
                  color: Colors.blueAccent,
                  nutrition: 'FAT',
                  isLeftAmount: false,
                  percent: 0.9,
                ),
              ],
            ),
          ),
          const Divider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Breakfast',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Icon(
                      FontAwesomeIcons.upRightAndDownLeftFromCenter,
                      size: 14,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                // height: 100,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Eggs',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '1 Serving',
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Text(
                          '100 Cal',
                          // textAlign: TextAlign.right,
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Expanded _buildSingleNutrition(
    BuildContext context, {
    required double percent,
    required Color color,
    required String nutrition,
    required double amount,

    /// is amount provided is amount of left for this nutrition or not
    required bool isLeftAmount,
  }) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                height: 8,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return AnimatedLine(
                      percent: percent,
                      color: color,
                      height: constraints.maxHeight,
                      width: constraints.maxWidth,
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            nutrition.toUpperCase(),
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            '${amount}g ${isLeftAmount ? 'left' : ''}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

class AnimatedLine extends StatefulWidget {
  const AnimatedLine({
    super.key,
    required this.percent,
    required this.color,
    required this.height,
    required this.width,
  });
  final double percent;

  final Color color;

  final double height;
  final double width;

  @override
  State createState() => _AnimatedLineState();
}

class _AnimatedLineState extends State<AnimatedLine>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

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
      ..animateTo(widget.percent);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AnimatedLine oldWidget) {
    if (oldWidget.percent != widget.percent) {
      _controller.animateTo(widget.percent);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Stack(
          children: [
            Container(
              height: widget.height,
              width: widget.width * _controller.value,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              height: widget.height,
              width: widget.width,
              color: widget.color.withOpacity(0.2),
            ),
          ],
        );
      },
    );
  }
}

class AnimatedRing extends StatefulWidget {
  const AnimatedRing({
    required this.centerWidget,
    this.percent,
    this.color = Colors.white,
    this.height = 50,
    this.strokeWidth = 5,
    super.key,
  });
  final Widget centerWidget;

  final double? percent;
  final Color color;
  final double height;
  final double strokeWidth;

  @override
  State createState() => _AnimatedRingState();
}

class _AnimatedRingState extends State<AnimatedRing>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

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
                      child: widget.centerWidget,
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

class CalorieWidget extends StatelessWidget {
  const CalorieWidget({
    super.key,
    required this.calories,
    required this.icon,
    this.iconColor,
    required this.subtitle,
  });

  final String calories;
  final IconData icon;
  final String subtitle;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          color: iconColor,
        ),
        const SizedBox(height: 5),
        Text(
          calories,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.caption?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
              ),
        ),
      ],
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
