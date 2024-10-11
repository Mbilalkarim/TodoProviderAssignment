import '../../data/models/name_num_model.dart';

abstract class NameNumberRepository {
  List<NameNumberEntity> getNamesWithNumbers();
  void incrementNumber(NameNumberEntity nameNumber);
}
