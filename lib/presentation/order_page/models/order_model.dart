// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'orders_item_model.dart';/// This class defines the variables used in the [order_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderModel extends Equatable {OrderModel({this.ordersItemList = const []});

List<OrdersItemModel> ordersItemList;

OrderModel copyWith({List<OrdersItemModel>? ordersItemList}) { return OrderModel(
ordersItemList : ordersItemList ?? this.ordersItemList,
); } 
@override List<Object?> get props => [ordersItemList];
 }
