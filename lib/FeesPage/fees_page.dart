import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:schoolmanagementapp/Widgets/fees_list_item.dart';
import 'package:schoolmanagementapp/Widgets/search_bar.dart';

class FeesPage extends StatelessWidget {
  const FeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Fees"),
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
          const CustomSearchBar(),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                FeesListItem(month: 'January', status: 'Paid', amount: 4500),
                FeesListItem(month: 'February', status: 'Paid', amount: 4500),
                FeesListItem(month: 'March', status: 'Unpaid', amount: 4500),
                FeesListItem(month: 'April', status: 'Unpaid', amount: 4500),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
