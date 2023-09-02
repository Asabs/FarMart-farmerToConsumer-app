// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'yam_item_model.dart';/// This class defines the variables used in the [yam_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class YamModel extends Equatable {YamModel({this.yamItemList = const []});

List<YamItemModel> yamItemList;

YamModel copyWith({List<YamItemModel>? yamItemList}) { return YamModel(
yamItemList : yamItemList ?? this.yamItemList,
); } 
@override List<Object?> get props => [yamItemList];
 }
