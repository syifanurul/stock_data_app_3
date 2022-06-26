part of 'stock_list_bloc.dart';

abstract class StockListEvent extends Equatable {
  const StockListEvent();

  @override
  List<Object> get props => [];
}

class LoadStockList extends StockListEvent {}

class UpdateStockList extends StockListEvent {
  final List<Stock_List> stock_list;

  UpdateStockList(this.stock_list);

  @override
  List<Object> get props => [stock_list];
}
