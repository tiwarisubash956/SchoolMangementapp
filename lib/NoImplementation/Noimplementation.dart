import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Noimplementation extends StatelessWidget {
  const Noimplementation({super.key});

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Center(child: Text("No implementaion")),
      ),
      body: const Center(
        child: Text("Soory Page is Not implemented"),
      ),
    );
  }
}
