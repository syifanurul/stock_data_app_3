import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Stock_List extends Equatable {
  final String kode_saham;
  final String nama_saham;
  final String value;
  final String diff;
  final String diff_percent;

  const Stock_List({
    required this.kode_saham,
    required this.nama_saham,
    required this.value,
    required this.diff,
    required this.diff_percent,
  });

  @override
  List<Object?> get props =>
      [kode_saham, nama_saham, value, diff, diff_percent];

  static Stock_List fromSnapshot(DocumentSnapshot snap) {
    Stock_List stock_list = Stock_List(
      kode_saham: snap['kode_saham'],
      nama_saham: snap['nama_saham'],
      value: snap['value'],
      diff: snap['diff'],
      diff_percent: snap['diff_percent'],
    );
    return stock_list;
  }
}
