// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'coconut_one_item_model.dart';/// This class defines the variables used in the [coconut_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CoconutOneModel extends Equatable {CoconutOneModel({this.coconutOneItemList = const []});

List<CoconutOneItemModel> coconutOneItemList;

CoconutOneModel copyWith({List<CoconutOneItemModel>? coconutOneItemList}) { return CoconutOneModel(
coconutOneItemList : coconutOneItemList ?? this.coconutOneItemList,
); } 
@override List<Object?> get props => [coconutOneItemList];
 }
