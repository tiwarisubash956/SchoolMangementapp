import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Result'),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Fields
            const TextField(
              decoration: InputDecoration(
                hintText: 'Henry Conaway',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    value: 'Standard - 6',
                    items: const [
                      DropdownMenuItem(
                          value: 'Standard - 6', child: Text('Standard - 6')),
                      DropdownMenuItem(
                          value: 'Standard - 7', child: Text('Standard - 7')),
                    ],
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                    value: 'Division - A',
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
            const SizedBox(height: 20),

            // Search Button
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
            const SizedBox(height: 20),

            // Results Table
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: const Column(
                children: [
                  ResultTable(),
                  SizedBox(height: 20),
                  Divider(thickness: 1),
                  SizedBox(height: 10),

                  // Result Summary
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Grand Total', style: TextStyle(fontSize: 16)),
                      Text('1269/1800', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Percentage', style: TextStyle(fontSize: 16)),
                      Text('79.87 %', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Position', style: TextStyle(fontSize: 16)),
                      Text('Eighteen', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Result', style: TextStyle(fontSize: 16)),
                      Text(
                        'Second Class',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResultTable extends StatelessWidget {
  const ResultTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      border: TableBorder.all(color: Colors.grey.shade300, width: 1),
      children: const [
        TableRow(
          decoration: BoxDecoration(color: Colors.grey),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Subject',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  Text('Test 1', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  Text('Test 2', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:
                  Text('Test 3', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('English'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('83/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('83/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('83/100'),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Hindi'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('68/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('100/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('100/100'),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Science'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('82/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('80/100'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('90/100'),
          ),
        ]),
      ],
    );
  }
}
