// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'banana_one_item_model.dart';/// This class defines the variables used in the [banana_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BananaOneModel extends Equatable {BananaOneModel({this.bananaOneItemList = const []});

List<BananaOneItemModel> bananaOneItemList;

BananaOneModel copyWith({List<BananaOneItemModel>? bananaOneItemList}) { return BananaOneModel(
bananaOneItemList : bananaOneItemList ?? this.bananaOneItemList,
); } 
@override List<Object?> get props => [bananaOneItemList];
 }
