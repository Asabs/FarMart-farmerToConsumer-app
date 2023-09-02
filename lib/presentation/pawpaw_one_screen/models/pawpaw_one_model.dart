// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'pawpaw_one_item_model.dart';/// This class defines the variables used in the [pawpaw_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PawpawOneModel extends Equatable {PawpawOneModel({this.pawpawOneItemList = const []});

List<PawpawOneItemModel> pawpawOneItemList;

PawpawOneModel copyWith({List<PawpawOneItemModel>? pawpawOneItemList}) { return PawpawOneModel(
pawpawOneItemList : pawpawOneItemList ?? this.pawpawOneItemList,
); } 
@override List<Object?> get props => [pawpawOneItemList];
 }
