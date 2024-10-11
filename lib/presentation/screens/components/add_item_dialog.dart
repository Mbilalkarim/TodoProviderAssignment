// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../providers/name_num_provider.dart';
//
// void showAddItemDialog(BuildContext context) {
//   final nameController = TextEditingController();
//
//   showDialog(
//     context: context,
//     builder: (context) {
//       return AlertDialog(
//         title: Text('Add New Name'),
//         content: TextField(
//           controller: nameController,
//           decoration: InputDecoration(hintText: 'Enter name'),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               final name = nameController.text;
//               if (name.isNotEmpty) {
//                 // Call the provider to add the new name-number entity
//                 Provider.of<NameNumberProvider>(context, listen: false)
//                     .addNameNumber(name);
//                 Navigator.of(context).pop(); // Close the dialog
//               }
//             },
//             child: Text('Add'),
//           ),
//           TextButton(
//             onPressed: () => Navigator.of(context).pop(), // Close dialog
//             child: Text('Cancel'),
//           ),
//         ],
//       );
//     },
//   );
// }
