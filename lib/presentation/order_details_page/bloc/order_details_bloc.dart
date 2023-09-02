import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/items_item_model.dart';import 'package:farmmart/presentation/order_details_page/models/order_details_model.dart';part 'order_details_event.dart';part 'order_details_state.dart';/// A bloc that manages the state of a OrderDetails according to the event that is dispatched to it.
class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {OrderDetailsBloc(OrderDetailsState initialState) : super(initialState) { on<OrderDetailsInitialEvent>(_onInitialize); }

_onInitialize(OrderDetailsInitialEvent event, Emitter<OrderDetailsState> emit, ) async  { emit(state.copyWith(orderDetailsModelObj: state.orderDetailsModelObj?.copyWith(itemsItemList: fillItemsItemList()))); } 
List<ItemsItemModel> fillItemsItemList() { return List.generate(3, (index) => ItemsItemModel()); } 
 }
