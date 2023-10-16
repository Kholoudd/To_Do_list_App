import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/pages/home/widget/task_item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    DateTime selectedDate = DateTime.now();
    return Column(
      children: [
        Stack(
          alignment: Alignment(0, 2.5),
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              height: 200,
              color: theme.primaryColor,
              child: Text(
                "To Do List",
                style: theme.textTheme.titleLarge,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              decoration: BoxDecoration(
                // color: Colors.white54,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: CalendarTimeline(
                // shrink: true,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(
                  const Duration(days: 365),
                ),
                onDateSelected: (date) {
                  selectedDate = date;
                },
                leftMargin: 20,
                monthColor: Colors.black87,
                dayColor: Colors.black87,
                activeDayColor: theme.primaryColor,
                activeBackgroundDayColor: Colors.white,
                dotsColor: Colors.white,
                selectableDayPredicate: (date) => date.day != 23,
                locale: 'en_ISO',
              ),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              TaskItems(),
            ],
          ),
        )
      ],
    );
  }
}
