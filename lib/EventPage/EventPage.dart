import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:schoolmanagementapp/Widgets/calendart_event_item.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text("Events"),
        backgroundColor: Colors.white,
        trailingActions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Event Manager"),
          SizedBox(
            height: 400,
            child: Center(
                child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2040),
              onDateChanged: (value) {},
            )),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                CalendarEventItem(
                  title: 'Outdoor Education Day',
                  date: '16 May 2023',
                  location: '564 Hammond St, Newton, MA',
                ),
                CalendarEventItem(
                  title: 'Cricket Match Tournament',
                  date: '26 May 2023',
                  location: '315 School St, Ann Arbor, MI',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
