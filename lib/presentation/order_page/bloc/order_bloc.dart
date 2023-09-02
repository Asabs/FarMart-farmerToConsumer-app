import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orders_item_model.dart';
import 'package:farmmart/presentation/order_page/models/order_model.dart';
part 'order_event.dart';
part 'order_state.dart';

/// A bloc that manages the state of a Order according to the event that is dispatched to it.
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(OrderState initialState) : super(initialState) {
    on<OrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderInitialEvent event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(
        orderModelObj: state.orderModelObj?.copyWith(
      ordersItemList: fillOrdersItemList(),
    )));
  }

  List<OrdersItemModel> fillOrdersItemList() {
    return List.generate(3, (index) => OrdersItemModel());
  }
}
