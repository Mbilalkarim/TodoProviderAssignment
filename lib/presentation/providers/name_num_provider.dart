import 'package:flutter/foundation.dart';

import '../../data/models/name_num_model.dart';
import '../../domain/usecases/name_number_usecase.dart';

class NameNumberProvider extends ChangeNotifier {
  final GetNameNumbers getNameNumbers;
  final IncrementNumber incrementNumber;

  List<NameNumberEntity> nameNumbers = [];

  NameNumberProvider(this.getNameNumbers, this.incrementNumber) {
    fetchData();
  }

  void fetchData() {
    nameNumbers = getNameNumbers();
    notifyListeners();
  }

  void increment(NameNumberEntity nameNumber) {
    incrementNumber(nameNumber);
    fetchData();
  }
}
