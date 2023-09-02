// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'pineapple_one_item_model.dart';/// This class defines the variables used in the [pineapple_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PineappleOneModel extends Equatable {PineappleOneModel({this.pineappleOneItemList = const []});

List<PineappleOneItemModel> pineappleOneItemList;

PineappleOneModel copyWith({List<PineappleOneItemModel>? pineappleOneItemList}) { return PineappleOneModel(
pineappleOneItemList : pineappleOneItemList ?? this.pineappleOneItemList,
); } 
@override List<Object?> get props => [pineappleOneItemList];
 }
