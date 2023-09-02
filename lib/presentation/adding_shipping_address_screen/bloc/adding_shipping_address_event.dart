// ignore_for_file: must_be_immutable

part of 'adding_shipping_address_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddingShippingAddress widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddingShippingAddressEvent extends Equatable {}

/// Event that is dispatched when the AddingShippingAddress widget is first created.
class AddingShippingAddressInitialEvent extends AddingShippingAddressEvent {
  @override
  List<Object?> get props => [];
}
