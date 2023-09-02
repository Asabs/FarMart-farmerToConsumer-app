// ignore_for_file: must_be_immutable

part of 'order_page_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrderPageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrderPageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OrderPageTabContainer widget is first created.
class OrderPageTabContainerInitialEvent extends OrderPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
