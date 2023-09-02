// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sweet_potato_item_model.dart';/// This class defines the variables used in the [sweet_potato_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SweetPotatoModel extends Equatable {SweetPotatoModel({this.sweetPotatoItemList = const []});

List<SweetPotatoItemModel> sweetPotatoItemList;

SweetPotatoModel copyWith({List<SweetPotatoItemModel>? sweetPotatoItemList}) { return SweetPotatoModel(
sweetPotatoItemList : sweetPotatoItemList ?? this.sweetPotatoItemList,
); } 
@override List<Object?> get props => [sweetPotatoItemList];
 }
