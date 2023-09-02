// ignore_for_file: must_be_immutable

part of 'shipping_addresses_bloc.dart';

/// Represents the state of ShippingAddresses in the application.
class ShippingAddressesState extends Equatable {
  ShippingAddressesState({this.shippingAddressesModelObj});

  ShippingAddressesModel? shippingAddressesModelObj;

  @override
  List<Object?> get props => [
        shippingAddressesModelObj,
      ];
  ShippingAddressesState copyWith(
      {ShippingAddressesModel? shippingAddressesModelObj}) {
    return ShippingAddressesState(
      shippingAddressesModelObj:
          shippingAddressesModelObj ?? this.shippingAddressesModelObj,
    );
  }
}
