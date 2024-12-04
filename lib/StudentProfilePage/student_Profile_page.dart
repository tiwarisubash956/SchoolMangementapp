import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Student'),
        trailingActions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      // Profile Picture
                      ClipOval(
                          child: CircleAvatar(
                        child: Icon(Icons.female),
                      )),
                      SizedBox(width: 16),
                      // Name and Class Info
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sofia Morales',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Class: 9 A | Roll No.: 24',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Registration Info Section
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Registration Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      InfoRow(
                          label: 'Registration Number',
                          value: '2020-RWEQ-2023'),
                      InfoRow(label: 'Academic Year', value: '2020-2023'),
                      InfoRow(label: 'Admission Number', value: '000247'),
                      InfoRow(
                          label: 'Date of Admission', value: '1 July, 2020'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Personal Information Section
              Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      InfoRow(label: 'Father Name', value: 'Bryan M. Morales'),
                      InfoRow(label: 'Mother Name', value: 'Pamela B. Morales'),
                      InfoRow(label: 'Phone No.', value: '+1 854-215-743'),
                      InfoRow(label: 'Email', value: 'sofia.24@gmail.com'),
                      InfoRow(
                        label: 'Address',
                        value:
                            '401 Clinkscales Rd 1123, Columbia, MO 65203, United States',
                      ),
                      InfoRow(
                          label: 'Date of Birth', value: '28 February, 2006'),
                      InfoRow(label: 'Age', value: '15 years old'),
                      InfoRow(label: 'Height', value: '4\'5 Feet'),
                      InfoRow(label: 'Weight', value: '35 KG'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Flexible(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
