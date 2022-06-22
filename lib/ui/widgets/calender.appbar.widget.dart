// ignore_for_file: lines_longer_than_80_chars

library calendar_appbar;

import 'package:calorie_tracker/ui/views/settings/settings.dart';
import 'package:flutter/cupertino.dart';

///adding necesarry packages
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

///Code starts here
class CalendarAppBar extends StatefulWidget implements PreferredSizeWidget {
  ///accent color of UI
  final Color? accent;

  ///definiton of your specific shade of white
  final Color? white;

  ///definiton of your specific shade of black
  final Color? black;

  ///the last date shown on the calendar
  final DateTime lastDate;

  ///the first date shown on the calendar
  final DateTime? firstDate;

  //the selected date shown on the calendar
  final DateTime? selectedDate;

  ///list of dates with specific event (shown as a dot above the date)
  final List<DateTime>? events;

  ///function which returns currently selected date
  final Function(DateTime) onDateChanged;

  ///definition of your custom padding
  final double? padding;

  ///definition of the atribute which shows full calendar view when pressing on date
  final bool? fullCalendar;

  ///[backButton] shows BackButton in set to true
  final bool? backButton;

  ///definiton of the calendar language
  final String? locale;

  final void Function()? onSettingsTap;

  ///initialization of [CalendarAppBar]
  CalendarAppBar({
    super.key,
    this.accent,
    this.white,
    this.black,
    required this.lastDate,
    this.firstDate,
    this.selectedDate,
    this.events,
    required this.onDateChanged,
    this.padding,
    this.fullCalendar,
    this.backButton,
    this.locale,
    this.onSettingsTap,
  }) {
    firstDate ?? DateTime(1950);
  }

  @override

  ///creating state
  State<CalendarAppBar> createState() => _CalendarAppBarState();

  @override

  ///creating a getter for [preferredSize]
  Size get preferredSize => const Size.fromHeight(120);
}

class _CalendarAppBarState extends State<CalendarAppBar> {
  ///defininon of [selectedDate] variable of current selected date
  late DateTime selectedDate;

  ///defininon of [firstDate] variable of current selected date
  late DateTime firstDate;

  ///defininon of [position] variable of current selected calendar card
  late int position;

  ///definition of the last selected date
  late DateTime referenceDate;

  ///list of dates with specific event (shown as a dot above the date)
  List<String> datesWithEnteries = [];

  ///definiton of your specific shade of white
  late Color white;

  ///accent color of UI
  Color get accent => widget.accent ?? Theme.of(context).primaryColor;

  ///definiton of your specific shade of black
  late Color black;

  ///definition of your custom padding
  late double padding;

  ///definition of the atribute which shows full calendar view when pressing on date
  late bool fullCalendar;

  ///[backButton] shows BackButton in set to true
  late bool backButton;

  ///[locale] is used for current local language of the library
  String get _locale => widget.locale ?? 'en';

  ///intializing values of atributes which were not defined by user
  @override
  void initState() {
    setState(() {
      ///initializing accent
      // accent = widget.accent ?? const Color(0xFF0039D9);

      ///initilizing first date
      firstDate = widget.firstDate ?? DateTime(1950);

      ///initializing white
      white = widget.white ?? Colors.white;

      ///initializing black
      black = widget.black ?? Colors.black87;

      ///initializing padding
      padding = widget.padding ?? 25.0;

      ///initializing backbutton
      backButton = widget.backButton ?? true;

      ///initializing fullCalendar
      fullCalendar = widget.fullCalendar ?? true;

      ///initializing firstDate
      selectedDate = widget.selectedDate ?? widget.lastDate;

      ///initializing referenceDate
      referenceDate = selectedDate;

      ///initializing language
      initializeDateFormatting(_locale);

      ///initializing position to 1
      position = 1;
    });

    ///changing event list to specific form
    if (widget.events != null) {
      ///for each item from event list, add just date String without time
      for (final element in widget.events!) {
        datesWithEnteries.add(element.toString().split(' ').first);
      }
    }
    super.initState();
  }

  ///definition of scroll controller
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    ///changing all dates to correct form for easier

    ///intitializing first date and setting it to midnight
    final first =
        DateTime.parse("${firstDate.toString().split(" ").first} 00:00:00.000");

    ///intitializing last date and setting it to 11 pm due to the time saving
    final last = DateTime.parse(
      "${widget.lastDate.toString().split(" ").first} 23:00:00.000",
    );

    ///creating date for List generation
    final basicDate =
        DateTime.parse("${first.toString().split(" ").first} 12:00:00.000");

    ///List of all dates that will be shown in scroller
    final pastDates = List.generate(
      (last.difference(first).inHours / 24).round(),
      (index) => basicDate.add(Duration(days: index)),
    )

      ///Sorting dates in descending order
      ..sort((b, a) => a.compareTo(b));

    ///creating function which return date scroller
    Widget calendarView() {
      ///UI for calendar scrollview
      return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        alignment: Alignment.bottomCenter,
        child: NotificationListener(
          onNotification: (dynamic notification) {
            ///scrolling mechanism defined
            final width = MediaQuery.of(context).size.width;

            ///defining widthUnit which presents one fifth of the screen minus
            ///4.0 px of padding between two date cards
            final widthUnit = width / 5 - 4.0;

            ///definition of offset which is the distance from scrolling beggining
            final offset = scrollController.offset;

            ///handeling situation if user finnished drag when scrolling but scrollview
            ///is still moving
            if (notification is UserScrollNotification &&
                notification.direction == ScrollDirection.idle &&

                // ignore_for_file: invalid_use_of_visible_for_testing_member
                // ignore_for_file: invalid_use_of_protected_member
                scrollController.position.activity is! HoldScrollActivity) {
              ///in case that scrollview is not at the beggining, then align it
              ///so all five date cards are fully visible on the screen
              if (offset > 0) {
                //animated scroll
                scrollController.animateTo(
                  (offset / widthUnit).round() * widthUnit,
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                );
              }

              ///compare last last selected date with curren selected date
              ///if date has changed return new selected date
              if (referenceDate.toString().split(' ').first !=
                  selectedDate.toString().split(' ').first) {
                ///wait that animation is finnished and than call function [onDateChange]
                Future.delayed(const Duration(milliseconds: 100), () {
                  widget.onDateChanged(selectedDate);
                });
                setState(() {
                  ///safe last selected date to referenceDate
                  referenceDate = selectedDate;
                });
              }
            }

            ///if the position of current selected card is out of screen when
            ///scrolling to the left
            if (offset > position * widthUnit - (widthUnit / 2)) {
              setState(() {
                ///increase position by one
                position = position + 1;

                ///set selectedDate on previous date
                selectedDate = selectedDate.subtract(const Duration(days: 1));

                ///adding hapric feedback in the future
                //HapticFeedback.lightImpact();
              });
            }

            ///if the position of current selected card is out of screen when
            ///scrolling to the right
            else if (offset + width < position * widthUnit - (widthUnit / 2)) {
              setState(() {
                ///decrease position by one
                position = position - 1;

                ///set selectedDate on previous date
                selectedDate = selectedDate.add(const Duration(days: 1));

                ///adding hapric feedback in the future
                //HapticFeedback.lightImpact();
              });
            }
            //unnecesary return
            return true;
          },

          ///UI for calendar scrollview
          child: ListView.builder(
            padding: pastDates.length < 5
                ? EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width *
                        (5 - pastDates.length) /
                        10,
                  )
                : const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            reverse: true,
            controller: scrollController,
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            itemCount: pastDates.length,
            itemBuilder: (context, index) {
              ///definition date which is set to the current building date from dates list
              final date = pastDates[index];

              ///if position of currently selected is equal to index + 1 (counting of positions starts with 1)
              final isSelected = position == index + 1;

              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: GestureDetector(
                  ///different UI for nonselected containers and the selected ones
                  ///this is the definition of the main container of calendar card
                  child: Container(
                    width: MediaQuery.of(context).size.width / 5 - 4.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width / 5 - 4.0,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isSelected ? white : Colors.transparent,
                            boxShadow: [
                              if (isSelected)
                                BoxShadow(
                                  color: accent.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: const Offset(0, 0.2),
                                )
                              else
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: const Offset(0, 3),
                                )
                            ],
                          ),

                          ///definition of content inside of calendar card
                          child: GestureDetector(
                            ///if pressed on specific date, set it as selected
                            onTap: () {
                              setState(() {
                                ///if user taps on this card set all parameters to this date
                                selectedDate = date;
                                referenceDate = selectedDate;
                                position = index + 1;
                              });
                              widget.onDateChanged(selectedDate);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///indicators of event on specific date
                                if (datesWithEnteries.contains(
                                  date.toString().split(' ').first,
                                ))
                                  Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: isSelected
                                          ? accent
                                          : white.withOpacity(0.6),
                                    ),
                                  )
                                else
                                  const SizedBox(
                                    height: 5,
                                  ),
                                const SizedBox(height: 10),

                                ///date number
                                Text(
                                  DateFormat('dd').format(date),
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: isSelected
                                        ? accent
                                        : white.withOpacity(0.6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 5),

                                ///day of the week
                                Text(
                                  DateFormat.E(Locale(_locale).toString())
                                      .format(date),
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: isSelected
                                        ? accent
                                        : white.withOpacity(0.6),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    }

    ///this function show full calendar view currently shown as modal bottom sheet
    void showFullCalendar(String locale) {
      showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: Theme.of(context).cardColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        builder: (BuildContext context) {
          double height;
          final endDate = widget.lastDate;

          if (firstDate.year == endDate.year &&
              firstDate.month == endDate.month) {
            height =
                ((MediaQuery.of(context).size.width - 2 * padding) / 7) * 5 +
                    150.0;
          } else {
            height = MediaQuery.of(context).size.height - 100.0;
          }
          return SizedBox(
            height: height,

            ///usage of full calender widget, which is defined below
            child: FullCalendar(
              height: height,
              startDate: firstDate,
              endDate: endDate,
              padding: padding,
              accent: accent,
              black: black,
              white: white,
              events: datesWithEnteries,
              selectedDate: referenceDate,
              locale: locale,
              onDateChange: selectDateAndScroll,
            ),
          );
        },
      );
    }

    ///UI of the whole appbar
    return Stack(
      clipBehavior: Clip.antiAlias,
      fit: StackFit.passthrough,
      children: [
        Positioned(
          top: 0,
          bottom: 12,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: accent,
          ),
        ),

        // Positioned(
        //   top: 59,
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: padding),
        //     child: Container(
        //       width: MediaQuery.of(context).size.width - (padding * 2),
        //       child: backButton
        //           ? Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 GestureDetector(
        //                   child: Icon(
        //                     Icons.arrow_back_ios_rounded,
        //                     color: white,
        //                   ),
        //                   onTap: () => Navigator.pop(context),
        //                 ),
        //                 GestureDetector(
        //                   onTap: () =>
        //                       fullCalendar ? showFullCalendar(_locale) : null,
        //                   child: Text(
        //                     DateFormat.yMMMM(Locale(_locale).toString())
        //                         .format(selectedDate),
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: white,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             )
        //           : Row(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 GestureDetector(
        //                   onTap: () =>
        //                       fullCalendar ? showFullCalendar(_locale) : null,
        //                   child: Text(
        //                     DateFormat.yMMMM(Locale(_locale).toString())
        //                         .format(selectedDate),
        //                     style: TextStyle(
        //                       fontSize: 20,
        //                       color: white,
        //                       fontWeight: FontWeight.w400,
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //     ),
        //   ),
        // ),
        Positioned(
          top: MediaQuery.of(context).viewPadding.top,
          bottom: -10,
          // top: 0 + MediaQuery.of(context).viewPadding.top,

          /// call calendarView function from above
          child: calendarView(),
        ),
        Positioned(
          top: 0 + MediaQuery.of(context).viewPadding.top,
          left: 15,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => showFullCalendar(_locale),
                radius: 10,
                child: const Icon(
                  FontAwesomeIcons.calendarDays,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    selectDateAndScroll(DateTime.now());
                  },
                  child: Text(
                    'Calorie Tracker',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              InkWell(
                onTap: widget.onSettingsTap,
                child: const Icon(
                  FontAwesomeIcons.gear,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  void selectDateAndScroll(DateTime value) {
    ///systematics of selecting specific date
    HapticFeedback.lightImpact();

    ///hide modal bottom sheet
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }

    ///define new variables
    final referentialDate = DateTime.parse(
      "${value.toString().split(" ").first} 12:00:00.000",
    );

    ///definition of [oldPosition]
    int? oldPosition;

    ///definition of [positionDifference]
    late int positionDifference;

    ///calculate new position of scrollview
    setState(() {
      ///setting current position to old position
      oldPosition = position;

      ///counting the difference between dates
      positionDifference =
          -(referentialDate.difference(referenceDate).inHours / 24).round();
    });

    ///saving current offset
    final offset = scrollController.offset;

    ///counting card width (similar to above)
    final widthUnit = MediaQuery.of(context).size.width / 5 - 4.0;

    ///wait to modal bottom sheet to hide
    Future.delayed(const Duration(milliseconds: 100), () {
      ///definition maximal offset based on maxScrollExtent
      final maxOffset = scrollController.position.maxScrollExtent;

      ///definition of minimal offset
      const minOffset = 0.0;

      ///counting current offset based of curren positon
      var newOffset = offset + (widthUnit * positionDifference);

      ///if current offset is out of bounderies set it to maximal or minimal offset
      if (newOffset > maxOffset) {
        newOffset = maxOffset;
      } else if (newOffset < minOffset) {
        newOffset = minOffset;
      }

      ///scroll the calendar scroller to the selected date
      scrollController.animateTo(
        newOffset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );

      ///wait on animation to be finished
      Future.delayed(const Duration(milliseconds: 550), () {
        setState(() {
          ///set slected date to current value
          selectedDate = value;

          ///set refernece date to selected date
          referenceDate = selectedDate;

          ///change position to current position
          position = oldPosition! + positionDifference;
        });
      });
    });

    ///call function to return new selected date
    widget.onDateChanged(value);
  }
}

///definition of full calendar shown in modal bottom sheet
class FullCalendar extends StatefulWidget {
  ///same variables as in CalendarAppBar class
  ///the first date shown on the calendar
  final DateTime startDate;

  ///the last date shown on the calendar
  final DateTime? endDate;

  ///currently selected date
  final DateTime? selectedDate;

  ///definiton of your specific shade of black
  final Color? black;

  ///accent color of UI
  final Color? accent;

  ///definiton of your specific shade of white
  final Color? white;

  ///definition of your custom padding
  final double? padding;

  ///definition of height
  final double? height;

  ///definition of locale
  final String? locale;

  ///list of dates with specific event (shown as a dot above the date)
  final List<String>? events;

  ///function which returns currently selected date
  final Function(DateTime) onDateChange;

  FullCalendar({
    Key? key,
    this.accent,
    this.endDate,
    required this.startDate,
    required this.padding,
    this.events,
    this.black,
    this.white,
    this.height,
    this.locale,
    this.selectedDate,
    required this.onDateChange,
  }) : super(key: key);
  @override
  _FullCalendarState createState() => _FullCalendarState();
}

class _FullCalendarState extends State<FullCalendar> {
  ///definition of [endDate]
  late DateTime endDate;

  ///definition of [startDate]
  late DateTime startDate;

  ///definition of [events]
  List<String>? events = [];

  ///transforming variables to correct form
  @override
  void initState() {
    setState(() {
      ///parsing [startDate] String to DateTime
      startDate = DateTime.parse(
        "${widget.startDate.toString().split(" ").first} 00:00:00.000",
      );

      ///parsing [endDate] String to DateTime
      endDate = DateTime.parse(
        "${widget.endDate.toString().split(" ").first} 23:00:00.000",
      );

      ///initializing [events]
      events = widget.events != null ? widget.events : null;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///transforming variables to correct form

    ///creating List of parts [partsStart] of DateTime String format
    final partsStart = startDate.toString().split(' ').first.split('-');

    ///parsing [partsStart] List of Strings to DateTime
    final firstDate = DateTime.parse(
      "${partsStart.first}-${partsStart[1].padLeft(2, '0')}-01 00:00:00.000",
    );

    ///creating List of parts [partsEnd] of DateTime String format
    final partsEnd = endDate.toString().split(' ').first.split('-');

    ///parsing [partsStart] List of Strings to DateTime
    final lastDate = DateTime.parse(
      '${partsEnd.first}-${(int.parse(partsEnd[1]) + 1).toString().padLeft(2, '0')}-01 23:00:00.000',
    ).subtract(const Duration(days: 1));

    ///calculating the height based of the screen height
    final width = MediaQuery.of(context).size.width - (2 * widget.padding!);

    ///definition of DateTime list dates
    final dates = List<DateTime>.empty(growable: true);

    /// definition of [referenceDate]
    var referenceDate = firstDate;

    ///creating list for calendar matrix
    while (referenceDate.isBefore(lastDate)) {
      final referenceParts = referenceDate.toString().split(' ');
      final newDate = DateTime.parse('${referenceParts.first} 12:00:00.000');
      dates.add(newDate);

      ///adding next date
      referenceDate = newDate.add(const Duration(days: 1));
    }

    ///check if range is in the same month
    if (firstDate.year == lastDate.year && firstDate.month == lastDate.month) {
      return Padding(
        padding: EdgeInsets.fromLTRB(widget.padding!, 40, widget.padding!, 0),
        child: month(dates, width, widget.locale),
      );
    } else {
      ///creating the list of the month in the range
      final months = <DateTime?>[];
      for (var i = 0; i < dates.length; i++) {
        if (i == 0 || (dates[i].month != dates[i - 1].month)) {
          months.add(dates[i]);
        }
      }

      ///sort months
      months.sort((b, a) => a!.compareTo(b!));
      return Padding(
        padding: EdgeInsets.fromLTRB(widget.padding!, 40, widget.padding!, 0),
        child: Container(
          ///scrolling of calendar
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            reverse: true,
            itemCount: months.length,
            itemBuilder: (context, index) {
              final date = months[index];
              final daysOfMonth = List<DateTime>.empty(growable: true);
              for (final item in dates) {
                if (date?.month == item.month && date?.year == item.year) {
                  daysOfMonth.add(item);
                }
              }

              ///check if the date is the last
              final isLast = index == 0;

              return Padding(
                padding: EdgeInsets.only(bottom: isLast ? 0.0 : 25.0),
                child: month(daysOfMonth, width, widget.locale),
              );
            },
          ),
        ),
      );
    }
  }

  ///definiton of week row that shows the day of the week for specific week
  Widget daysOfWeek(double width, String? locale) {
    final daysNames = List<String>.empty(growable: true);
    for (var day = 12; day <= 19; day++) {
      daysNames.add(
        DateFormat.E(locale.toString()).format(DateTime.parse('1970-01-$day')),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        dayName(width / 7, daysNames[0]),
        dayName(width / 7, daysNames[1]),
        dayName(width / 7, daysNames[2]),
        dayName(width / 7, daysNames[3]),
        dayName(width / 7, daysNames[4]),
        dayName(width / 7, daysNames[5]),
        dayName(width / 7, daysNames[6]),
      ],
    );
  }

  ///definition of day widget
  Widget dayName(double width, String text) {
    return Container(
      width: width,
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          // color: widget.black!.withOpacity(0.8),
        ),
      ),
    );
  }

  ///definition of date in Calendar widget
  Widget dateInCalendar(
    DateTime date,
    bool outOfRange,
    double width,
    bool event,
  ) {
    ///comparing the date of current building widget with selected widget
    final isSelectedDate = date.toString().split(' ').first ==
        widget.selectedDate.toString().split(' ').first;
    return Container(
      child: GestureDetector(
        onTap: () => outOfRange ? null : widget.onDateChange(date),
        child: Container(
          width: width / 7,
          height: width / 7,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isSelectedDate ? widget.accent : Colors.transparent,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  DateFormat('dd').format(date),
                  style: TextStyle(
                    fontWeight: isSelectedDate ? FontWeight.bold : null,

                    ///UI of full calendar shows also the dates that are out
                    ///of the range defined by first and last date, although
                    ///the UI is different for the dates out of range
                    color: outOfRange
                        ? isSelectedDate ||
                                Theme.of(context).brightness == Brightness.dark
                            ? widget.white!.withOpacity(0.9)
                            : widget.black!.withOpacity(0.4)
                        : isSelectedDate ||
                                Theme.of(context).brightness == Brightness.dark
                            ? widget.white
                            : widget.black,
                  ),
                ),
              ),

              ///if there is an event on the specific date, UI will show dot in accent color
              if (event)
                Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelectedDate ? widget.white : widget.accent,
                  ),
                )
              else
                const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  ///definition of month widget

  Widget month(List<DateTime> dates, double width, String? locale) {
    ///definition of first and initializing it on the first date int the month
    final first = dates.first;
    while (DateFormat('E').format(dates.first) != 'Mon') {
      ///add "empty fields" to the list to get offset of the days
      dates
        ..add(dates.first.subtract(const Duration(days: 1)))

        ///sort all the dates
        ..sort();
    }

    ///logically show all the dates in the month
    return Container(
      child: Column(
        children: [
          ///name of the month
          Text(
            DateFormat.MMMM(Locale(locale!).toString()).format(first),
            style: const TextStyle(
              fontSize: 18,
              // color: widget.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: daysOfWeek(width, widget.locale),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              ///calculate the number of rows with dates based on number of days in the month
              height: dates.length > 28
                  ? dates.length > 35
                      ? 6 * width / 7
                      : 5 * width / 7
                  : 4 * width / 7,
              width: MediaQuery.of(context).size.width - 2 * widget.padding!,

              ///show all days in the month
              child: GridView.builder(
                itemCount: dates.length,

                ///Since each calendar is drawn separatly it shouldn't be scrollable
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                ),
                itemBuilder: (context, index) {
                  ///create date for each day in the month
                  final date = dates[index];

                  ///check if it is empty field
                  final outOfRange =
                      date.isBefore(startDate) || date.isAfter(endDate);

                  ///if it is empty field return empty container
                  if (date.isBefore(first)) {
                    return Container(
                      width: width / 7,
                      height: width / 7,
                      color: Colors.transparent,
                    );
                  }

                  ///otherwise return date container
                  else {
                    return dateInCalendar(
                      date,
                      outOfRange,
                      width,
                      events!.contains(date.toString().split(' ').first) &&
                          !outOfRange,
                    );
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

///end of code
