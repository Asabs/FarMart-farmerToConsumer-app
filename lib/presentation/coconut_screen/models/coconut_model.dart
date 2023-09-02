// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'coconut_item_model.dart';/// This class defines the variables used in the [coconut_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CoconutModel extends Equatable {CoconutModel({this.coconutItemList = const []});

List<CoconutItemModel> coconutItemList;

CoconutModel copyWith({List<CoconutItemModel>? coconutItemList}) { return CoconutModel(
coconutItemList : coconutItemList ?? this.coconutItemList,
); } 
@override List<Object?> get props => [coconutItemList];
 }
