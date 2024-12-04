import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Standard',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: '10',
                  child: Text('Standard - 10'),
                ),
                DropdownMenuItem(
                  value: '9',
                  child: Text('Standard - 9'),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                labelText: 'Division',
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'E',
                  child: Text('Division - E'),
                ),
                DropdownMenuItem(
                  value: 'D',
                  child: Text('Division - D'),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
