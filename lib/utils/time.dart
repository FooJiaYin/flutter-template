import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeFormat on DateTime {
  static final chineseWeekDayList = ["一", "二", "三", "四", "五", "六", "日"];
  static final weekdays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

  String get chineseWeekDay => chineseWeekDayList[weekday - 1];

  String get dateString => "${DateFormat("yyyy.MM.dd").format(this)} ($chineseWeekDay)";

  String get timeString => DateFormat('HH:mm').format(this);

  String get dateTimeString => "$dateString $timeString";

  DateTime get startOfDay => DateTime(year, month, day);

  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  static final today = DateTime.now().startOfDay;
}

extension DateTimeRangeFormat on DateTimeRange {
  get display => "${start.timeString}-${end.timeString}";
}
