// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'pawpaw_two_item_model.dart';/// This class defines the variables used in the [pawpaw_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PawpawTwoModel extends Equatable {PawpawTwoModel({this.pawpawTwoItemList = const []});

List<PawpawTwoItemModel> pawpawTwoItemList;

PawpawTwoModel copyWith({List<PawpawTwoItemModel>? pawpawTwoItemList}) { return PawpawTwoModel(
pawpawTwoItemList : pawpawTwoItemList ?? this.pawpawTwoItemList,
); } 
@override List<Object?> get props => [pawpawTwoItemList];
 }
