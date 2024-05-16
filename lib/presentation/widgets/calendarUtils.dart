import 'dart:collection';
 

import 'package:table_calendar/table_calendar.dart';

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;

  List<Event> toList() {return [this];}
}

/// Example events.
///
/// Using a [LinkedHashMap] is highly recommended if you decide to use a map.
final kEvents = LinkedHashMap<DateTime, List<Event>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = Map.fromIterable(List.generate(50, (index) => index),
    key: (item){
       // Calculate the next Sunday from kFirstDay
      DateTime nextSunday = kFirstDay
          .subtract(Duration(days: kFirstDay.weekday - DateTime.sunday-1));

      // Add multiples of 7 days to get subsequent Sundays
      return nextSunday.add(Duration(days: item * 7));
    },
    value: (item) => List.generate(
        item % 4 + 1, (index) => Event('Read Pages $item | Workbook - ${index + 1}')))
  ..addAll({
    kToday: [
      Event('Today\'s Assignments: Read p 22-23'),
      Event('Today\'s Event: Charity Event at ICCL'),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

// / Returns a list of [DateTime] objects from [first] to [last], inclusive.
List<DateTime> daysInRange(DateTime first, DateTime last) {
  final dayCount = last.difference(first).inDays + 1;
  return List.generate(
    dayCount,
    (index) => DateTime.utc(first.year, first.month, first.day + index),
  );
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
