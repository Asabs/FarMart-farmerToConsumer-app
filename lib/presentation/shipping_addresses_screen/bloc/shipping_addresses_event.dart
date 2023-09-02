// ignore_for_file: must_be_immutable

part of 'shipping_addresses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ShippingAddresses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShippingAddressesEvent extends Equatable {}

/// Event that is dispatched when the ShippingAddresses widget is first created.
class ShippingAddressesInitialEvent extends ShippingAddressesEvent {
  @override
  List<Object?> get props => [];
}

class ShippingaddressItemEvent extends ShippingAddressesEvent {
  ShippingaddressItemEvent({
    required this.index,
    this.isCheckbox,
  });

  int index;

  bool? isCheckbox;

  @override
  List<Object?> get props => [
        index,
        isCheckbox,
      ];
}
