import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '/models/models.dart';
import '/repositories/stock_list/stock_list_repository.dart';

part 'stock_list_event.dart';
part 'stock_list_state.dart';

class StockListBloc extends Bloc<StockListEvent, StockListState> {
  final StockListRepository _stockListRepository;
  StreamSubscription? _stockListSubscription;

  StockListBloc({required StockListRepository stockListRepository})
      : _stockListRepository = stockListRepository,
        super(StockListLoading()) {
    on<LoadStockList>(_onLoadStockList);
    on<UpdateStockList>(_onUpdateStockList);
  }

  void _onLoadStockList(
    LoadStockList event,
    Emitter<StockListState> emit,
  ) {
    _stockListSubscription?.cancel();
    _stockListSubscription = _stockListRepository.getAllStockList().listen(
          (products) => add(
            UpdateStockList(products),
          ),
        );
  }

  void _onUpdateStockList(
    UpdateStockList event,
    Emitter<StockListState> emit,
  ) {
    emit(
      StockListLoaded(stock_list: event.stock_list),
    );
  }
}
