// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'beans_item_model.dart';/// This class defines the variables used in the [beans_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BeansModel extends Equatable {BeansModel({this.beansItemList = const []});

List<BeansItemModel> beansItemList;

BeansModel copyWith({List<BeansItemModel>? beansItemList}) { return BeansModel(
beansItemList : beansItemList ?? this.beansItemList,
); } 
@override List<Object?> get props => [beansItemList];
 }
