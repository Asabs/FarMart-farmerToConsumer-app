// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'potato_item_model.dart';/// This class defines the variables used in the [potato_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PotatoModel extends Equatable {PotatoModel({this.potatoItemList = const []});

List<PotatoItemModel> potatoItemList;

PotatoModel copyWith({List<PotatoItemModel>? potatoItemList}) { return PotatoModel(
potatoItemList : potatoItemList ?? this.potatoItemList,
); } 
@override List<Object?> get props => [potatoItemList];
 }
