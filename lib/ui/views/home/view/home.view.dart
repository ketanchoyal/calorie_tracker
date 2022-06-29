part of 'home.page.dart';

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

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
    final primaryColor = context.color.when(
      light: () => Theme.of(context).primaryColor,
      dark: () => Theme.of(context).primaryColorDark,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CalendarAppBar(
        onDateChanged: (date) {
          context.read<HomeBloc>().add(
                SomeOtherDateHomeEvent(date),
              );
        },
        accent: primaryColor,
        backButton: false,
        firstDate: DateTime.now().subtract(const Duration(days: 140)),
        lastDate: DateTime.now(),
        onSettingsTap: () async {
          // try {
          //   await context.read<FirebaseAuthService>().loginAnonmously();
          //   print('Login Successful');
          // } catch (e) {
          //   print(e);
          // }
          await Navigator.push(
            context,
            CupertinoPageRoute<void>(
              builder: (context) => const SettingsView(),
            ),
          );
        },
        fullCalendar: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CupertinoPageRoute<void>(
              builder: (_) =>
                  AddCaloriesView(date: context.read<HomeBloc>().state.date),
            ),
          );
        },
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
          Builder(
            builder: (context) {
              final state = context.watch<HomeBloc>().state;
              final goals = context.watch<GoalsBloc>().state;

              final totalCalories = state.totalCalories;
              final caloriesGoal = goals.caloriesGoal;
              final caloriesLeft = caloriesGoal - totalCalories;
              final caloriesLeftPercent = caloriesLeft / caloriesGoal;

              final totalProtein = state.totalProtein;
              final proteinGoal = goals.proteinGoal;
              final proteinEatenPercent = totalProtein / proteinGoal;

              final totalCarbs = state.totalCarbs;
              final carbsGoal = goals.carbsGoal;
              final carbsEatenPercent = totalCarbs / carbsGoal;

              final totalFat = state.totalFat;
              final fatGoal = goals.fatGoals;
              final fatEatenPercent = totalFat / fatGoal;

              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CalorieWidget(
                          calories: '${totalCalories.toDoubleAsFixed(2)}',
                          icon: FontAwesomeIcons.bowlRice,
                          iconColor: primaryColor,
                          subtitle: 'EATEN',
                        ),
                      ),
                      AnimatedRing(
                        centerWidget: CalorieWidget(
                          calories: '${caloriesLeft.toDoubleAsFixed(2)}',
                          icon: FontAwesomeIcons.boltLightning,
                          subtitle: 'CAL LEFT',
                        ),
                        height: 150,
                        percent: min<double>(
                          1,
                          caloriesLeftPercent.convertToUseableDouble
                              .toDoubleAsFixed(2),
                        ),
                        strokeWidth: 16,
                        color: primaryColor,
                      ),
                      Expanded(
                        child: CalorieWidget(
                          calories: '....',
                          icon: FontAwesomeIcons.fireFlameCurved,
                          iconColor: primaryColor,
                          subtitle: 'BURNED',
                        ),
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
                          amount: state.totalProtein.toStringAsFixed(2),
                          color: Colors.purple,
                          nutrition: 'Protein',
                          isLeftAmount: false,
                          hadExtra: state.hadExtraProtein,
                          percent: min<double>(
                            1,
                            proteinEatenPercent.convertToUseableDouble,
                          ).toDoubleAsFixed(2),
                        ),
                        _buildSingleNutrition(
                          context,
                          amount: state.totalCarbs.toStringAsFixed(2),
                          color: Colors.greenAccent,
                          nutrition: 'Carbs',
                          isLeftAmount: false,
                          hadExtra: state.hadExtraCarbs,
                          percent: min<double>(
                            1,
                            carbsEatenPercent.convertToUseableDouble,
                          ).toDoubleAsFixed(2),
                        ),
                        _buildSingleNutrition(
                          context,
                          amount: state.totalFat.toStringAsFixed(2),
                          color: Colors.blueAccent,
                          nutrition: 'FAT',
                          hadExtra: state.hadExtraFat,
                          isLeftAmount: false,
                          percent: min<double>(
                            1,
                            fatEatenPercent.convertToUseableDouble,
                          ).toDoubleAsFixed(2),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          const Divider(),
          const _DailyFoodLog()
        ],
      ),
    );
  }

  Expanded _buildSingleNutrition(
    BuildContext context, {
    required double percent,
    required Color color,
    required String nutrition,
    required String amount,
    required bool hadExtra,

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
                  color: hadExtra ? Theme.of(context).primaryColor : null,
                ),
          ),
        ],
      ),
    );
  }
}

class _DailyFoodLog extends StatelessWidget {
  const _DailyFoodLog({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<FoodLog>>(
      stream: context.watch<HomeBloc>().foodLogStream,
      builder: (context, snapshot) {
        final logList = snapshot.data ?? [];
        final foodTypes = logList.map((e) => e.foodType).toSet();
        return Column(
          children: foodTypes
              .map(
                (e) => _FoodLogView(
                  foodType: e,
                  foodLogList: logList,
                ),
              )
              .toList()
            ..sort((a, b) => a.foodType.sortValue),
        );
      },
    );
  }
}

class _FoodLogView extends StatelessWidget {
  _FoodLogView({
    super.key,
    required this.foodType,
    required List<FoodLog> foodLogList,
  }) : foodLogList = foodLogList
            .where((element) => element.foodType == foodType)
            .toList();
  final FoodType foodType;
  final List<FoodLog> foodLogList;

  @override
  Widget build(BuildContext context) {
    final totalCalories = foodLogList
        .map((e) => e.totalCaloriesEaten)
        .toList()
        .reduce((value, element) => value + element);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                foodType.displayName,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '${totalCalories.toDoubleAsFixed(2)} Cal',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Column(
          children:
              foodLogList.map((e) => _SingleFoodLogItem(foodLog: e)).toList(),
        ),
      ],
    );
  }
}

class _SingleFoodLogItem extends StatelessWidget {
  const _SingleFoodLogItem({
    super.key,
    required this.foodLog,
  });
  final FoodLog foodLog;

  @override
  Widget build(BuildContext context) {
    var isExpanded = false;
    return SwipeableTile.card(
      swipeThreshold: 0.2,
      borderRadius: 10,
      shadow: BoxShadow(
        color: Colors.black.withOpacity(0.1),
      ),
      horizontalPadding: 8,
      verticalPadding: 8,
      color: Theme.of(context).canvasColor,
      direction: SwipeDirection.horizontal,
      confirmSwipe: (direction) async {
        if (direction == SwipeDirection.endToStart) {
          return showConfirmationDialog<bool>(
            context: context,
            title: 'Are you sure you want to delete this food log?',
            okLabel: 'Delete',
            actions: [const AlertDialogAction(key: true, label: 'Delete')],
          );
        }
        return null;
      },
      onSwiped: (direction) {
        if (direction == SwipeDirection.endToStart) {
          //Delete Here
          context.read<HomeBloc>().deleteLog(foodLog.id!);
        }
      },
      backgroundBuilder: (context, direction, progress) {
        if (direction == SwipeDirection.endToStart) {
          return Row(
            children: const [
              Spacer(),
              Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.delete_forever_rounded,
                  color: Colors.red,
                  size: 30,
                ),
              ),
            ],
          );
        } else if (direction == SwipeDirection.startToEnd) {
          // return your widget
        }
        return Container();
      },
      key: UniqueKey(),
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return Container(
            // margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).dividerColor,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                radius: 10,
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: AnimatedPadding(
                            duration: const Duration(milliseconds: 300),
                            padding: EdgeInsets.only(
                              top: 12,
                              left: 12,
                              bottom: isExpanded ? 8 : 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodLog.name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Row(
                            children: [
                              Text(
                                '${foodLog.caloriesPerServing} Cal',
                                // textAlign: TextAlign.right,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                ' x ${foodLog.servingEaten}',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AnimatedCrossFade(
                      duration: const Duration(milliseconds: 300),
                      crossFadeState: isExpanded
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      firstChild: Container(),
                      secondChild: Padding(
                        padding: const EdgeInsets.only(left: 12, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Protein : '.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      '${foodLog.protein} g',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      ' x ${foodLog.servingEaten}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Carbs : '.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      '${foodLog.carbs} g',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      ' x ${foodLog.servingEaten}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Fat : '.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      '${foodLog.fat} g',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      ' x ${foodLog.servingEaten}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            if (!foodLog.allAdded && !kIsWeb)
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                  radius: 10,
                                  borderRadius: BorderRadius.circular(10),
                                  onTap: () async {
                                    await context
                                        .read<HomeBloc>()
                                        .addDataToHealthKit(foodLog);
                                    // ignore: use_build_context_synchronously
                                    ScaffoldMessenger.of(context)
                                        .clearSnackBars();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        duration: Duration(milliseconds: 300),
                                        content: Text('Added To HealthKit'),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.add_box_outlined,
                                      color: Colors.red,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
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
      duration: const Duration(milliseconds: 2000),
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
      duration: const Duration(milliseconds: 1500),
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
            transform: Matrix4.rotationY(pi),
            child: CustomPaint(
              painter: _RingPanter(
                _controller.value,
                widget.strokeWidth,
                widget.color,
              ),
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(pi),
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
      pi * 2,
      false,
      paint,
    );
    paint.color = color;
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      -pi / 2,
      -2 * pi * percent,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(_RingPanter oldCategory) {
    return percent != oldCategory.percent || color != oldCategory.color;
  }
}
