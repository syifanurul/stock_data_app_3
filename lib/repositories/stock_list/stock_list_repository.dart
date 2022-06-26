import 'package:cloud_firestore/cloud_firestore.dart';
import '/models/stock_list_model.dart';
import '/repositories/stock_list/base_stock_list_repository.dart';

class StockListRepository extends BaseStockListRepository {
  final FirebaseFirestore _firebaseFirestore;

  StockListRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Stock_List>> getAllStockList() {
    return _firebaseFirestore
        .collection('stock_list')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Stock_List.fromSnapshot(doc)).toList();
    });
  }
}
