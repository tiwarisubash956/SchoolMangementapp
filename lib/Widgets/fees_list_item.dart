import 'package:flutter/material.dart';

class FeesListItem extends StatelessWidget {
  final String month;
  final String status;
  final double amount;

  const FeesListItem({
    super.key,
    required this.month,
    required this.status,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(month),
        subtitle: Text(status),
        trailing: Text('\$$amount'),
      ),
    );
  }
}
