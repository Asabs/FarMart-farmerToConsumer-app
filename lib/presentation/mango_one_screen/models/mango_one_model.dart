// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'mango_one_item_model.dart';/// This class defines the variables used in the [mango_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MangoOneModel extends Equatable {MangoOneModel({this.mangoOneItemList = const []});

List<MangoOneItemModel> mangoOneItemList;

MangoOneModel copyWith({List<MangoOneItemModel>? mangoOneItemList}) { return MangoOneModel(
mangoOneItemList : mangoOneItemList ?? this.mangoOneItemList,
); } 
@override List<Object?> get props => [mangoOneItemList];
 }
