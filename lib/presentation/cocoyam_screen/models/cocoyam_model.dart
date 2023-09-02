// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'cocoyam_item_model.dart';/// This class defines the variables used in the [cocoyam_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CocoyamModel extends Equatable {CocoyamModel({this.cocoyamItemList = const []});

List<CocoyamItemModel> cocoyamItemList;

CocoyamModel copyWith({List<CocoyamItemModel>? cocoyamItemList}) { return CocoyamModel(
cocoyamItemList : cocoyamItemList ?? this.cocoyamItemList,
); } 
@override List<Object?> get props => [cocoyamItemList];
 }
