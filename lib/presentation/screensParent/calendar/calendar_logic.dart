import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_state.dart';
import 'package:wise_app/presentation/widgets/calendarUtils.dart';

class CalendarLogicP extends GetxController {
  final CalendarStateP state = CalendarStateP();

  @override
  void onInit() {
    super.onInit();

    state.selectedDay = state.focusedDay;
    state.selectedEvents = ValueNotifier(getEventsForDay(state.selectedDay!));
  }

  @override
  void dispose() {
    state.selectedEvents.dispose();
    super.dispose();
  }

  List<Event> getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day]!.toList();
  }

  List<Event> getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ...getEventsForDay(d),
    ];
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(state.selectedDay, selectedDay)) {
      // Obx( () {
      state.selectedDay = selectedDay;
      state.focusedDay = focusedDay;
      state.rangeStart = null; // Important to clean those
      state.rangeEnd = null;
      state.rangeSelectionMode = RangeSelectionMode.toggledOff;

      // });

      // state.selectedEvents.value = getEventsForDay(selectedDay);
    }
  }

  void onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    state.selectedDay = null;
    state.focusedDay = focusedDay;
    state.rangeStart = start;
    state.rangeEnd = end;
    state.rangeSelectionMode = RangeSelectionMode.toggledOn;

    // `start` or `end` could be null
    if (start != null && end != null) {
      state.selectedEvents.value = getEventsForRange(start, end);
    } else if (start != null) {
      state.selectedEvents.value = getEventsForDay(start);
    } else if (end != null) {
      state.selectedEvents.value = getEventsForDay(end);
    }
  }
}
