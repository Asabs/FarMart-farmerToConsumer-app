// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'banana_item_model.dart';/// This class defines the variables used in the [banana_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BananaModel extends Equatable {BananaModel({this.bananaItemList = const []});

List<BananaItemModel> bananaItemList;

BananaModel copyWith({List<BananaItemModel>? bananaItemList}) { return BananaModel(
bananaItemList : bananaItemList ?? this.bananaItemList,
); } 
@override List<Object?> get props => [bananaItemList];
 }
