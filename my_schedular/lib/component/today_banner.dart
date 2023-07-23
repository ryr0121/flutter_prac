import 'package:flutter/material.dart';
import 'package:my_schedular/const/colors.dart';

class TodayBanner extends StatelessWidget {
  final DateTime selectedDay;
  final int scheduleCount;

  const TodayBanner({
    required this.selectedDay,
    required this.scheduleCount,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PRIMARY_COLOR,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          renderBannerText('${selectedDay.year}년 ${selectedDay.month}월 ${selectedDay.day}일'),
          renderBannerText('${scheduleCount}개'),
        ],
      ),
    );
  }

  Text renderBannerText(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
    );
  }
}
