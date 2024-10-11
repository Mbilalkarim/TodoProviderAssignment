import '../../data/models/name_num_model.dart';
import '../repository/name_number_repo.dart';

class GetNameNumbers {
  final NameNumberRepository repository;

  GetNameNumbers(this.repository);

  List<NameNumberEntity> call() {
    return repository.getNamesWithNumbers();
  }
}

class IncrementNumber {
  final NameNumberRepository repository;

  IncrementNumber(this.repository);

  void call(NameNumberEntity nameNumber) {
    repository.incrementNumber(nameNumber);
  }
}
