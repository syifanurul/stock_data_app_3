import '/models/models.dart';

abstract class BaseStockListRepository {
  Stream<List<Stock_List>> getAllStockList();
}
