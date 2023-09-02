// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [shippingaddress_item_widget] screen.
class ShippingaddressItemModel extends Equatable {ShippingaddressItemModel({this.nameTxt = "Jane Doe", this.isCheckbox = false, this.id, });

String nameTxt;

bool isCheckbox;

String? id;

ShippingaddressItemModel copyWith({String? nameTxt, bool? isCheckbox, String? id, }) { return ShippingaddressItemModel(
nameTxt : nameTxt ?? this.nameTxt,
isCheckbox : isCheckbox ?? this.isCheckbox,
id : id ?? this.id,
); } 
@override List<Object?> get props => [nameTxt,isCheckbox,id];
 }
