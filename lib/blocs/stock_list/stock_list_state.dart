part of 'stock_list_bloc.dart';

abstract class StockListState extends Equatable {
  const StockListState();

  @override
  List<Object> get props => [];
}

class StockListLoading extends StockListState {}

class StockListLoaded extends StockListState {
  final List<Stock_List> stock_list;

  StockListLoaded({this.stock_list = const <Stock_List>[]});

  @override
  List<Object> get props => [stock_list];
}
