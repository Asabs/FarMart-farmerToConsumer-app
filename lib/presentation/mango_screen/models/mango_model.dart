// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'mango_item_model.dart';/// This class defines the variables used in the [mango_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MangoModel extends Equatable {MangoModel({this.mangoItemList = const []});

List<MangoItemModel> mangoItemList;

MangoModel copyWith({List<MangoItemModel>? mangoItemList}) { return MangoModel(
mangoItemList : mangoItemList ?? this.mangoItemList,
); } 
@override List<Object?> get props => [mangoItemList];
 }
