import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sixlogicassignment/core/utilities/extensions.dart';
import 'package:sixlogicassignment/core/utilities/font_sizes.dart';

import '../providers/name_num_provider.dart';
import 'detail_list_screen.dart';

class NameNumberListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NameNumberProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Name List'),
        centerTitle: true, // Center the title
      ),
      body: ListView.builder(
        itemCount: provider.nameNumbers.length,
        itemBuilder: (context, index) {
          final item = provider.nameNumbers[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(
                vertical: Dimensions.PADDING_SIZE_8, horizontal: Dimensions.PADDING_SIZE_16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(Dimensions.PADDING_SIZE_16),
              title: Text(item.name, style: FontSize.txtOut20_600),
              subtitle: Text('Number: ${item.number}', style: FontSize.txtOut16_400),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NameNumberDetailScreen(index),
                  ),
                );
              },
              trailing: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  provider.increment(item);
                },
                color: Colors.blue,
              ),
            ),
          );
        },
      ),
    );
  }
}
