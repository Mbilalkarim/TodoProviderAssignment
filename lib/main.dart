import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sixlogicassignment/data/repository/name_numb_repo_impl.dart';
import 'package:sixlogicassignment/presentation/providers/name_num_provider.dart';
import 'package:sixlogicassignment/presentation/screens/name_num_screen.dart';

import 'domain/usecases/name_number_usecase.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: _initProviders(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Name List App',
        home: NameNumberListScreen(),
      ),
    );
  }

  List<SingleChildWidget> _initProviders() {
    final repository = NameNumberRepositoryImpl();
    return [
      ChangeNotifierProvider(
        create: (_) => NameNumberProvider(
          GetNameNumbers(repository),
          IncrementNumber(repository),
        ),
      ),
    ];
  }
}
