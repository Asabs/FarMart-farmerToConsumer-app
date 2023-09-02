// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'rice_item_model.dart';/// This class defines the variables used in the [rice_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RiceModel extends Equatable {RiceModel({this.riceItemList = const []});

List<RiceItemModel> riceItemList;

RiceModel copyWith({List<RiceItemModel>? riceItemList}) { return RiceModel(
riceItemList : riceItemList ?? this.riceItemList,
); } 
@override List<Object?> get props => [riceItemList];
 }
