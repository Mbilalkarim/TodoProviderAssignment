import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/name_num_provider.dart';

class NameNumberDetailScreen extends StatelessWidget {
  final int index;
  const NameNumberDetailScreen(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NameNumberProvider>(context);
    final nameNumber = provider.nameNumbers[index];

    return Scaffold(
      appBar: AppBar(title: Text(nameNumber.name)),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: ${nameNumber.name}'),
            Text('Number: ${nameNumber.number}'),
            ElevatedButton(
              onPressed: () {
                provider.increment(nameNumber);
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
