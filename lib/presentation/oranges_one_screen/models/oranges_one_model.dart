// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'oranges_one_item_model.dart';/// This class defines the variables used in the [oranges_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrangesOneModel extends Equatable {OrangesOneModel({this.orangesOneItemList = const []});

List<OrangesOneItemModel> orangesOneItemList;

OrangesOneModel copyWith({List<OrangesOneItemModel>? orangesOneItemList}) { return OrangesOneModel(
orangesOneItemList : orangesOneItemList ?? this.orangesOneItemList,
); } 
@override List<Object?> get props => [orangesOneItemList];
 }
