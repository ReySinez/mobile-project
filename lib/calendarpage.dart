import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});
  @override
  CalendarPageState createState() => CalendarPageState();
}

class CalendarPageState extends State<CalendarPage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Color(0xffC2F8CB),
      ),
      body: Column(
        children: [
          SizedBox(height: 32),
          Container(
            child: TableCalendar(
                locale: "en_US",
                rowHeight: 43,
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2024, 01, 11),
                lastDay: DateTime.utc(2030, 12, 31),
                onDaySelected: _onDaySelected),
          ),
        ],
      ),
    );
  }
}
