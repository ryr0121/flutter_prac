import 'package:flutter/material.dart';
import 'package:my_schedular/component/calendar.dart';
import 'package:my_schedular/component/today_banner.dart';
import 'package:my_schedular/const/colors.dart';

import '../component/schedule_bottom_sheet.dart';
import '../component/schedule_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: renderFloatingActionButton(),
      body: SafeArea(
        child: Column(
          children: [
            Calendar(
              selectedDay: selectedDay,
              focusedDay: focusedDay,
              onDaySelected: onDaySelected,
            ),
            SizedBox(height: 8.0),
            TodayBanner(
                selectedDay: selectedDay,
                scheduleCount: 3
            ),
            ScheduleCard(
              startTime: 8,
              endTime: 9,
              content: '플러터 조지기',
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
      this.focusedDay = selectedDay;
    });
  }

  FloatingActionButton renderFloatingActionButton() {
    return FloatingActionButton(
      onPressed: (){
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) {
              return ScheduleBottomSheet();
            },
          );
      },
      child: Icon(Icons.add),
      backgroundColor: PRIMARY_COLOR,
    );
  }
}
