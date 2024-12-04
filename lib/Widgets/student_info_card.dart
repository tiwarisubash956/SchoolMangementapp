import 'package:flutter/material.dart';

class StudentInfoCard extends StatelessWidget {
  final String name;
  final String classInfo;
  final String registrationNumber;
  final String admissionDate;
  final String fatherName;
  final String motherName;
  final String phone;
  final String email;
  final String address;
  final String dateOfBirth;
  final String age;
  final String height;
  final String weight;

  const StudentInfoCard({
    super.key,
    required this.name,
    required this.classInfo,
    required this.registrationNumber,
    required this.admissionDate,
    required this.fatherName,
    required this.motherName,
    required this.phone,
    required this.email,
    required this.address,
    required this.dateOfBirth,
    required this.age,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).textTheme.titleLarge),
            Text(classInfo),
            const SizedBox(height: 8),
            Text('Registration Number: $registrationNumber'),
            Text('Admission Date: $admissionDate'),
            Text('Father\'s Name: $fatherName'),
            Text('Mother\'s Name: $motherName'),
            Text('Phone: $phone'),
            Text('Email: $email'),
            Text('Address: $address'),
            const SizedBox(height: 8),
            Text('DOB: $dateOfBirth'),
            Text('Age: $age'),
            Text('Height: $height'),
            Text('Weight: $weight'),
          ],
        ),
      ),
    );
  }
}
