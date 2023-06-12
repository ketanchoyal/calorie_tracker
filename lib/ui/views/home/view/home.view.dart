part of 'home.page.dart';

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.color.when(
      light: () => Theme.of(context).primaryColor,
      dark: () => Theme.of(context).primaryColorDark,
    );

    return CupertinoPageScaffold(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CalendarAppBar(
          onDateChanged: (date) {
            context.read<HomeBloc>().changeDate(date);
          },
          onNewMonthWidgetCreate: context.read<HomeBloc>().monthChange,
          events: context.watch<HomeBloc>().state.datesWithLogs,
          accent: primaryColor,
          backButton: false,
          firstDate: DateTime.now().subtract(const Duration(days: 365 * 3)),
          lastDate: DateTime.now(),
          onSettingsTap: () async {
            await Navigator.push(
              context,
              CupertinoPageRoute<void>(
                builder: (context) => const SettingsView(),
              ),
            );
          },
          fullCalendar: true,
        ),
        floatingActionButton: Builder(
          builder: (context) {
            final bloc = context.watch<HomeBloc>();
            return Padding(
              padding: bloc.state.copiedData != null
                  ? const EdgeInsets.only(left: 30)
                  : EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: bloc.state.copiedData != null
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.end,
                children: [
                  if (bloc.state.copiedData != null)
                    FloatingActionButton(
                      onPressed: () {
                        context.read<HomeBloc>().addFoodLog();
                      },
                      backgroundColor: primaryColor,
                      child: const Icon(
                        FontAwesomeIcons.paste,
                        color: Colors.white,
                      ),
                    ),
                  GestureDetector(
                    onLongPress: () {
                      context
                          .read<HomeBloc>()
                          .getCaloresBurned(bloc.state.date);
                    },
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute<void>(
                            builder: (_) => AddCaloriesView(
                              date: context.read<HomeBloc>().state.date,
                            ),
                          ),
                        );
                      },
                      backgroundColor: primaryColor,
                      child: const Icon(
                        FontAwesomeIcons.qrcode,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            context.read<HomeBloc>().changeDate(
                  context.read<HomeBloc>().state.date.subtract(
                        const Duration(
                          days: 1,
                        ),
                      ),
                );
          },
          onSwipeLeft: () {
            context.read<HomeBloc>().changeDate(
                  context.read<HomeBloc>().state.date.add(
                        const Duration(
                          days: 1,
                        ),
                      ),
                );
          },
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 130 + MediaQuery.of(context).viewPadding.top,
            ),
            children: [
              Builder(
                builder: (context) {
                  final state = context.watch<HomeBloc>().state;
                  final goals = context.watch<GoalsBloc>().state;

                  final burnedCalories = state.totalBurnedCalories;

                  final totalCalories = state.totalCalories;
                  // final caloriesGoal = goals.caloriesGoal;
                  // final caloriesEatenPercent = totalCalories / caloriesGoal;
                  // final hadExtraCalories = totalCalories > caloriesGoal;

                  final totalProtein = state.totalProtein;
                  final proteinGoal = goals.proteinGoal;
                  final proteinEatenPercent = totalProtein / proteinGoal;
                  final hadExtraProtein = totalProtein > proteinGoal;

                  final totalCarbs = state.totalCarbs;
                  final carbsGoal = goals.carbsGoal;
                  final carbsEatenPercent = totalCarbs / carbsGoal;
                  final hadExtraCarbs = totalCarbs > carbsGoal;

                  final totalFat = state.totalFat;
                  final fatGoal = goals.fatGoal;
                  final fatEatenPercent = totalFat / fatGoal;
                  final hadExtraFat = totalFat > fatGoal;

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
                          // Rings(
                          //   calories: state.totalCalories,
                          //   protein: state.totalProtein,
                          //   carbs: state.totalCarbs,
                          //   fat: state.totalFat,
                          //   totalCalories: state.totalCalories,
                          //   totalProtein: state.totalProtein,
                          //   totalCarbs: state.totalCarbs,
                          //   totalFat: state.totalFat,
                          //   goals: (
                          //     calories: caloriesGoal,
                          //     protein: proteinGoal,
                          //     carbs: carbsGoal,
                          //     fat: fatGoal
                          //   ),
                          // ),
                          SizedBox(
                            height: 145,
                            width: 145,
                            child: AnimatedRing(
                              height: 145,
                              centerWidget: AnimatedRing(
                                height: 116,
                                centerWidget: AnimatedRing(
                                  height: 90,
                                  centerWidget: SizedBox(),
                                  // percent: 1.4,
                                  percent: fatEatenPercent
                                      .convertToUseableDouble
                                      .toDoubleAsFixed(2),

                                  strokeWidth: 14,
                                  color: Colors.blueAccent,
                                ),
                                percent: proteinEatenPercent
                                    .convertToUseableDouble
                                    .toDoubleAsFixed(2),
                                strokeWidth: 14,
                                color: Colors.purple,
                              ),
                              percent: carbsEatenPercent.convertToUseableDouble
                                  .toDoubleAsFixed(2),
                              strokeWidth: 14,
                              color: Colors.greenAccent,
                            ),
                          ),
                          Expanded(
                            child: CalorieWidget(
                              calories:
                                  '${burnedCalories.toDouble().toDoubleAsFixed(2)}',
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
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            _buildSingleNutrition(
                              context,
                              amount: state.totalProtein.toStringAsFixed(2),
                              color: Colors.purple,
                              nutrition: 'Protein',
                              isLeftAmount: false,
                              hadExtra: hadExtraProtein,
                              percent: min<double>(
                                1,
                                proteinEatenPercent.convertToUseableDouble,
                              ).toDoubleAsFixed(2),
                              goalAmount: proteinGoal.toStringAsFixed(2),
                            ),
                            _buildSingleNutrition(
                              context,
                              amount: state.totalCarbs.toStringAsFixed(2),
                              color: Colors.greenAccent,
                              nutrition: 'Carbs',
                              isLeftAmount: false,
                              hadExtra: hadExtraCarbs,
                              percent: min<double>(
                                1,
                                carbsEatenPercent.convertToUseableDouble,
                              ).toDoubleAsFixed(2),
                              goalAmount: carbsGoal.toStringAsFixed(2),
                            ),
                            _buildSingleNutrition(
                              context,
                              amount: state.totalFat.toStringAsFixed(2),
                              color: Colors.blueAccent,
                              nutrition: 'FAT',
                              hadExtra: hadExtraFat,
                              isLeftAmount: false,
                              percent: min<double>(
                                1,
                                fatEatenPercent.convertToUseableDouble,
                              ).toDoubleAsFixed(2),
                              goalAmount: fatGoal.toStringAsFixed(2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
              // if (!kIsWeb &&
              //     context.watch<HomeBloc>().state.date.isBefore(DateTime.now()))
              //   const Divider(),
              // if (!kIsWeb &&
              //     context.watch<HomeBloc>().state.date.isBefore(DateTime.now()))
              //   Container(
              //     height: 50,
              //     margin: const EdgeInsets.all(8),
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       border: Border.all(
              //         color: Colors.transparent,
              //       ),
              //       borderRadius: BorderRadius.circular(10),
              //       color: Theme.of(context).cardColor,
              //     ),
              //     child: InkWell(
              //       radius: 20,
              //       borderRadius: BorderRadius.circular(10),
              //       overlayColor: MaterialStateProperty.all(
              //         Theme.of(context).primaryColor.withOpacity(0.5),
              //       ),
              //       onTap: () {},
              //       child: Center(
              //         child: Text(
              //           'Sync with HealthKit',
              //           style: Theme.of(context).textTheme.bodyText1?.copyWith(
              //                 fontWeight: FontWeight.bold,
              //               ),
              //         ),
              //       ),
              //     ),
              //   ),
              const Divider(),
              const _DailyFoodLog()
            ],
          ),
        ),
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
    required String goalAmount,

    /// is amount provided is amount of left for this nutrition or not
    required bool isLeftAmount,
  }) {
    return Expanded(
      child: Column(
        children: [
          Text(
            nutrition.toUpperCase(),
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: color,
                  letterSpacing: 0,
                ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            '${amount}g ${isLeftAmount ? 'left' : ''}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: hadExtra ? Theme.of(context).primaryColor : null,
                ),
          ),
          Divider(
            endIndent: 30,
            indent: 30,
            height: 5,
          ),
          Text(
            '${goalAmount}g',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).textTheme.bodySmall?.color,
                ),
          ),
        ],
      ),
    );
  }
}

class _DailyFoodLog extends StatelessWidget {
  const _DailyFoodLog();

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
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                '${totalCalories.toDoubleAsFixed(2)} Cal',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
        Column(
          children: foodLogList
              .map(
                (e) => _SingleFoodLogItem(
                  foodLog: e,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _SingleFoodLogItem extends HookWidget {
  const _SingleFoodLogItem({
    required this.foodLog,
  });
  final FoodLog foodLog;

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState<bool>(false);
    return CupertinoContextMenu.builder(
      actions: <Widget>[
        CupertinoContextMenuAction(
          onPressed: () {
            context
                .read<HomeBloc>()
                .updateCopiedData(FoodLog.senetizeForFirestore(foodLog));
            Navigator.pop(context);
          },
          trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
          isDefaultAction: true,
          child: const Text('Copy'),
        ),
        CupertinoContextMenuAction(
          onPressed: () async {
            Navigator.pop(context);
            final result = await showConfirmationDialog<bool>(
              context: context,
              title:
                  'Are you sure you want to delete ${foodLog.name} from food log?',
              okLabel: 'Delete',
              actions: [const AlertDialogAction(key: true, label: 'Delete')],
            );
            if (result ?? false) {
              await context.read<HomeBloc>().deleteLog(foodLog);
            }
          },
          isDestructiveAction: true,
          trailingIcon: CupertinoIcons.delete,
          child: const Text('Delete'),
        ),
      ],
      builder: (context, animation) {
        return SizedBox(
          // height: animation.value > 0 ? animation.value * 150 : null,
          child: SwipeableTile.card(
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
                  title:
                      'Are you sure you want to delete ${foodLog.name} from food log?',
                  okLabel: 'Delete',
                  actions: [
                    const AlertDialogAction(key: true, label: 'Delete')
                  ],
                );
              }
              return null;
            },
            onSwiped: (direction) {
              if (direction == SwipeDirection.endToStart) {
                //Delete Here
                context.read<HomeBloc>().deleteLog(foodLog);
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
            key: Key(foodLog.id!),
            child: StatefulBuilder(
              builder: (BuildContext context, setState) {
                return Container(
                  // margin: const EdgeInsets.all(8),
                  height: animation.value > 0.2
                      ? max(53, animation.value * 130)
                      : null,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: foodLog.allAdded
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).dividerColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: double.infinity,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      radius: 10,
                      borderRadius: BorderRadius.circular(10),
                      onTap: animation.value > 0
                          ? null
                          : () {
                              isExpanded.value = !isExpanded.value;
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
                                    bottom: (isExpanded.value ||
                                            animation.value > 0.8)
                                        ? animation.value * 8
                                        : 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        foodLog.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge
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
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      ' x ${foodLog.servingEaten}',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
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
                            duration: const Duration(milliseconds: 50),
                            crossFadeState:
                                (isExpanded.value || animation.value > 0.8)
                                    ? CrossFadeState.showSecond
                                    : CrossFadeState.showFirst,
                            firstChild: Container(),
                            secondChild: Padding(
                              padding:
                                  const EdgeInsets.only(left: 12, bottom: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Protein : '.toUpperCase(),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            '${foodLog.protein} g',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            ' x ${foodLog.servingEaten}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
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
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            '${foodLog.carbs} g',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            ' x ${foodLog.servingEaten}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
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
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            '${foodLog.fat} g',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          Text(
                                            ' x ${foodLog.servingEaten}',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  if ((!foodLog.allAdded &&
                                          !(kIsWeb || Platform.isMacOS)) &&
                                      animation.value == 0)
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
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              content:
                                                  Text('Added To HealthKit'),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          child: const Icon(
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
          ),
        );
      },
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
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
              ),
        ),
      ],
    );
  }
}
