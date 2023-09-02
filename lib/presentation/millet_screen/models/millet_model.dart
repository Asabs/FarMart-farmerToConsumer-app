// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'millet_item_model.dart';/// This class defines the variables used in the [millet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MilletModel extends Equatable {MilletModel({this.milletItemList = const []});

List<MilletItemModel> milletItemList;

MilletModel copyWith({List<MilletItemModel>? milletItemList}) { return MilletModel(
milletItemList : milletItemList ?? this.milletItemList,
); } 
@override List<Object?> get props => [milletItemList];
 }
