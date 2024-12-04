import 'package:flutter/material.dart';

class CalendarEventItem extends StatelessWidget {
  final String title;
  final String date;
  final String location;

  const CalendarEventItem({
    super.key,
    required this.title,
    required this.date,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(date),
            Text(location),
          ],
        ),
      ),
    );
  }
}
