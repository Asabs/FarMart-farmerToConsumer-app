// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'cassava_item_model.dart';/// This class defines the variables used in the [cassava_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CassavaModel extends Equatable {CassavaModel({this.cassavaItemList = const []});

List<CassavaItemModel> cassavaItemList;

CassavaModel copyWith({List<CassavaItemModel>? cassavaItemList}) { return CassavaModel(
cassavaItemList : cassavaItemList ?? this.cassavaItemList,
); } 
@override List<Object?> get props => [cassavaItemList];
 }
