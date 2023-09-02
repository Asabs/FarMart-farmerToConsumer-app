// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'items_item_model.dart';/// This class defines the variables used in the [order_details_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel extends Equatable {OrderDetailsModel({this.itemsItemList = const []});

List<ItemsItemModel> itemsItemList;

OrderDetailsModel copyWith({List<ItemsItemModel>? itemsItemList}) { return OrderDetailsModel(
itemsItemList : itemsItemList ?? this.itemsItemList,
); } 
@override List<Object?> get props => [itemsItemList];
 }
