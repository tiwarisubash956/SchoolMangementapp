import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:schoolmanagementapp/AttendenceScreen/AttendencePage.dart';
import 'package:schoolmanagementapp/EventPage/EventPage.dart';
import 'package:schoolmanagementapp/FeesPage/fees_page.dart';
import 'package:schoolmanagementapp/NoImplementation/Noimplementation.dart';
import 'package:schoolmanagementapp/ResultPage/ResultPage.dart';
import 'package:schoolmanagementapp/StudentProfilePage/student_Profile_page.dart';
import 'package:schoolmanagementapp/TimeTableScreen/TimeTableScreen.dart';

class DashboardScreen extends StatelessWidget {
  final List<Map<String, dynamic>> academics = [
    {
      'icon': 'assets/images/reading-book.png',
      'label': 'Students',
      'route': const StudentProfilePage()
    },
    {
      'icon': 'assets/images/teacher.png',
      'label': 'Teachers',
      'route': const Noimplementation()
    },
    {
      'icon': 'assets/images/attendence.png',
      'label': 'Attendance',
      'route': const AttendancePage()
    },
    {
      'icon': 'assets/images/syllabus.png',
      'label': 'Syllabus',
      'route': const Noimplementation()
    },
    {
      'icon': 'assets/images/time-table.png',
      'label': 'Time Table',
      'route': const TimeTablePage()
    },
    {
      'icon': 'assets/images/assignment.png',
      'label': 'Assignments',
      'route': const Noimplementation()
    },
    {
      'icon': 'assets/images/exam.png',
      'label': 'Exams',
      'route': const Noimplementation()
    },
    {
      'icon': 'assets/images/result.png',
      'label': 'Results',
      'route': const ResultPage()
    },
    {
      'icon': 'assets/images/fees.png',
      'label': 'Fees',
      'route': const FeesPage()
    },
    {
      'icon': 'assets/images/events.png',
      'label': 'Events',
      'route': const EventPage()
    },
    {
      'icon': 'assets/images/inbox.png',
      'label': 'Inbox',
      'route': const Noimplementation()
    },
    {
      'icon': 'assets/images/ask-question.png',
      'label': 'Ask Doubt',
      'route': const Noimplementation()
    },
  ];

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                      ),
                      const Text(
                        'Michael Smith',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.notifications_none_outlined)
                ],
              ),
              const SizedBox(height: 20),
              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Academics section title
              const Text(
                'Academics',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              // Grid for academics cards
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        MediaQuery.of(context).size.width > 600 ? 4 : 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3 / 2.5,
                  ),
                  itemCount: academics.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => academics[index]['route'],
                          ),
                        );
                        // Handle card tap
                      },
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              academics[index]['icon'],
                              height: 40,
                            ), // Displaying the custom icons
                            const SizedBox(height: 10),
                            Text(
                              academics[index]['label'],
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
