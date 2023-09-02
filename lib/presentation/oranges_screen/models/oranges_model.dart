// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'oranges_item_model.dart';/// This class defines the variables used in the [oranges_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrangesModel extends Equatable {OrangesModel({this.orangesItemList = const []});

List<OrangesItemModel> orangesItemList;

OrangesModel copyWith({List<OrangesItemModel>? orangesItemList}) { return OrangesModel(
orangesItemList : orangesItemList ?? this.orangesItemList,
); } 
@override List<Object?> get props => [orangesItemList];
 }
