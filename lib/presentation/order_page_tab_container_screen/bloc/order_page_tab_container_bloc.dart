import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/order_page_tab_container_screen/models/order_page_tab_container_model.dart';part 'order_page_tab_container_event.dart';part 'order_page_tab_container_state.dart';/// A bloc that manages the state of a OrderPageTabContainer according to the event that is dispatched to it.
class OrderPageTabContainerBloc extends Bloc<OrderPageTabContainerEvent, OrderPageTabContainerState> {OrderPageTabContainerBloc(OrderPageTabContainerState initialState) : super(initialState) { on<OrderPageTabContainerInitialEvent>(_onInitialize); }

_onInitialize(OrderPageTabContainerInitialEvent event, Emitter<OrderPageTabContainerState> emit, ) async  {  } 
 }
