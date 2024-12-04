import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class TimeTablePage extends StatelessWidget {
  const TimeTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Time Table'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        trailingActions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdowns and Search Button
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Standard',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    value: 'Std-11 Sci',
                    items: const [
                      DropdownMenuItem(
                          value: 'Std-11 Sci', child: Text('Std-11 Sci')),
                      DropdownMenuItem(
                          value: 'Std-12 Sci', child: Text('Std-12 Sci')),
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: 'Division',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    value: 'Division - B',
                    items: const [
                      DropdownMenuItem(
                          value: 'Division - A', child: Text('Division - A')),
                      DropdownMenuItem(
                          value: 'Division - B', child: Text('Division - B')),
                    ],
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('Search'),
              ),
            ),
            const SizedBox(height: 16),

            // Time Table Section
            Expanded(
              child: ListView(
                children: const [
                  TimeTableDay(day: 'Monday', schedules: []),
                  TimeTableDay(
                    day: 'Tuesday',
                    schedules: [
                      Schedule(
                          time: '09:30 - 10:30',
                          subject: 'Chemistry',
                          teacher: 'Sean Davidson'),
                      Schedule(
                          time: '10:30 - 11:30',
                          subject: 'Maths',
                          teacher: 'Carlyn Jolly'),
                      Schedule(
                          time: '11:30 - 12:30',
                          subject: 'Biology',
                          teacher: 'Steven Miller'),
                      Schedule(
                          time: '12:30 - 13:30', subject: 'Break', teacher: ''),
                      Schedule(
                          time: '13:30 - 14:30',
                          subject: 'Physics',
                          teacher: 'Curtis Wilson'),
                      Schedule(
                          time: '14:30 - 15:30',
                          subject: 'English',
                          teacher: 'Diane Scott'),
                    ],
                  ),
                  TimeTableDay(day: 'Wednesday', schedules: []),
                  TimeTableDay(day: 'Thursday', schedules: []),
                  TimeTableDay(day: 'Friday', schedules: []),
                  TimeTableDay(day: 'Saturday', schedules: []),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeTableDay extends StatelessWidget {
  final String day;
  final List<Schedule> schedules;

  const TimeTableDay({
    super.key,
    required this.day,
    required this.schedules,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Day Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
        const SizedBox(height: 8),

        // Schedule List
        if (schedules.isNotEmpty)
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: schedules
                  .map((schedule) => TimeTableRow(schedule: schedule))
                  .toList(),
            ),
          )
        else
          const SizedBox(height: 8),
        const SizedBox(height: 20),
      ],
    );
  }
}

class Schedule {
  final String time;
  final String subject;
  final String teacher;

  const Schedule({
    required this.time,
    required this.subject,
    required this.teacher,
  });
}

class TimeTableRow extends StatelessWidget {
  final Schedule schedule;

  const TimeTableRow({super.key, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(schedule.time, style: const TextStyle(fontSize: 14)),
          ),
          Expanded(
            flex: 3,
            child: Text(schedule.subject, style: const TextStyle(fontSize: 14)),
          ),
          Expanded(
            flex: 3,
            child: Text(schedule.teacher, style: const TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
