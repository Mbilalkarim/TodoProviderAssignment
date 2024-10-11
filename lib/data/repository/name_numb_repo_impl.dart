import '../../domain/repository/name_number_repo.dart';
import '../models/name_num_model.dart';

class NameNumberRepositoryImpl implements NameNumberRepository {
  final List<NameNumberEntity> _data = [
    NameNumberEntity(name: 'Alice', number: 0),
    NameNumberEntity(name: 'Bob', number: 0),
  ];

  @override
  List<NameNumberEntity> getNamesWithNumbers() {
    return _data;
  }

  @override
  void incrementNumber(NameNumberEntity nameNumber) {
    final index = _data.indexWhere((element) => element.name == nameNumber.name);
    if (index != -1) {
      _data[index] = NameNumberEntity(
        name: nameNumber.name,
        number: nameNumber.number + 1,
      );
    }
  }
}
