import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timeline_calendar/timeline/model/calendar_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/day_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/headers_options.dart';
import 'package:flutter_timeline_calendar/timeline/utils/calendar_types.dart';
import 'package:flutter_timeline_calendar/timeline/widget/timeline_calendar.dart';

class HomePage extends StatelessWidget {
  @override
  static const String routeName = "home_Page";

  const HomePage({super.key});

  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment(0, 5),
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              height: 170,
              color: theme.primaryColor,
              child: Text(
                "To Do List",
                style: theme.textTheme.titleLarge,
              ),
            ),
            Container(
              child: TimelineCalendar(
                calendarType: CalendarType.GREGORIAN,
                calendarLanguage: "en",
                calendarOptions: CalendarOptions(
                  viewType: ViewType.DAILY,
                  toggleViewType: true,
                  headerMonthElevation: 10,
                  headerMonthShadowColor: Colors.black26,
                  headerMonthBackColor: Colors.transparent,
                ),
                dayOptions: DayOptions(
                    compactMode: true,
                    weekDaySelectedColor: const Color(0xff3AC3E2),
                    disableDaysBeforeNow: true),
                headerOptions: HeaderOptions(
                    weekDayStringType: WeekDayStringTypes.SHORT,
                    // monthStringType: MonthStringTypes.FULL,
                    // backgroundColor: const Color(0xff3AC3E2),
                    headerTextColor: Colors.black),
                onChangeDateTime: (datetime) {
                  print(datetime.getDate());
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
