import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:wise_app/core/routes/app_routes.dart';
import 'package:wise_app/core/style/constants.dart';
import 'package:wise_app/presentation/screensParent/calendar/calendar_logic.dart';
import 'package:wise_app/presentation/widgets/child_dropdown/child_drop_down.dart';
import 'package:wise_app/presentation/widgets/text.dart';
import 'package:wise_app/presentation/widgets/calendarUtils.dart';

class CalendarPageT extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPageT> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALENDAR'),
      ),
      body: Column(
        children: [
          TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              // Use `CalendarStyle` to customize the UI
              outsideDaysVisible: false,
            ),
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                        onTap: () => print('${value[index]}'),
                        title: Text('${value[index]}'),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the plus button press
          // Add your custom logic here
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey, // You can customize the color
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


// class CalendarPage extends StatelessWidget {
//   final logic = Get.find<CalendarLogic>();
//   final state = Get.find<CalendarLogic>().state;
//   CalendarFormat _calendarFormat = CalendarFormat.month;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backG,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         actions: [ChildDropdownButton()],
//         leading: IconButton(
//             onPressed: () {
//               Get.back();
//             },
//             icon: Icon(Icons.arrow_back)),
//         title: CustomText(
//           'CALENDAR',
//           fontSize: 18,
//           color: Colors.black,
//           fontWeight: FontWeight.w500,
//         ),
//       ),
//       body: Container(
//         color: Colors.white,
//         margin: EdgeInsets.only(top: 50),
//         child: Column(
//           children: [
//             TableCalendar<Event>(
//               firstDay: kFirstDay,
//               lastDay: kLastDay,
//               focusedDay: state.focusedDay,
//               selectedDayPredicate: (day) => isSameDay(state.selectedDay, day),
//               rangeStartDay: state.rangeStart,
//               rangeEndDay: state.rangeEnd,
//               calendarFormat: _calendarFormat,
//               rangeSelectionMode: state.rangeSelectionMode,
//               eventLoader: logic.getEventsForDay,
//               startingDayOfWeek: StartingDayOfWeek.monday,
//               calendarStyle: CalendarStyle(
//                 // Use `CalendarStyle` to customize the UI
//                 outsideDaysVisible: false,
//               ),
//               onDaySelected: logic.onDaySelected,
//               onRangeSelected: logic.onRangeSelected,
//               onFormatChanged: (format) {
//                 if (_calendarFormat != format) {
//                   setState(() {
//                     _calendarFormat = format;
//                   });
//                 }
//               },
//               onPageChanged: (focusedDay) {
//                 state.focusedDay = focusedDay;
//               },
//             ),
//             const SizedBox(height: 8.0),
//             //  Expanded(
//             // child:
//             // Container(
//             //   height: 50,
//             //   margin: const EdgeInsets.symmetric(
//             //     horizontal: 12.0,
//             //     vertical: 4.0,
//             //   ),
//             //   decoration: BoxDecoration(
//             //     border: Border.all(),
//             //     borderRadius: BorderRadius.circular(12.0),
//             //   ),
//             //   child: Text(
//             //     'Event for Today',
//             //     style: TextStyle(color: Colors.black),
//             //   ),
//             // ),

//             ValueListenableBuilder<List<Event>>(
//               valueListenable: state.selectedEvents,
//               builder: (context, value, _) {
//                 return ListView.builder(
//                   itemCount: value.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       margin: const EdgeInsets.symmetric(
//                         horizontal: 12.0,
//                         vertical: 4.0,
//                       ),
//                       decoration: BoxDecoration(
//                         border: Border.all(),
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                       child: ListTile(
//                         onTap: () => print('${value[index]}'),
//                         title: Text('Event Text${value[index]}'),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
