// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'wheat_item_model.dart';/// This class defines the variables used in the [wheat_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WheatModel extends Equatable {WheatModel({this.wheatItemList = const []});

List<WheatItemModel> wheatItemList;

WheatModel copyWith({List<WheatItemModel>? wheatItemList}) { return WheatModel(
wheatItemList : wheatItemList ?? this.wheatItemList,
); } 
@override List<Object?> get props => [wheatItemList];
 }
