// ignore_for_file: must_be_immutable

part of 'order_page_tab_container_bloc.dart';

/// Represents the state of OrderPageTabContainer in the application.
class OrderPageTabContainerState extends Equatable {
  OrderPageTabContainerState({this.orderPageTabContainerModelObj});

  OrderPageTabContainerModel? orderPageTabContainerModelObj;

  @override
  List<Object?> get props => [
        orderPageTabContainerModelObj,
      ];
  OrderPageTabContainerState copyWith(
      {OrderPageTabContainerModel? orderPageTabContainerModelObj}) {
    return OrderPageTabContainerState(
      orderPageTabContainerModelObj:
          orderPageTabContainerModelObj ?? this.orderPageTabContainerModelObj,
    );
  }
}
