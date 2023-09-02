// ignore_for_file: must_be_immutable

part of 'payment_method_bloc.dart';

/// Represents the state of PaymentMethod in the application.
class PaymentMethodState extends Equatable {
  PaymentMethodState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.paymentMethodModelObj,
  });

  PaymentMethodModel? paymentMethodModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        paymentMethodModelObj,
      ];
  PaymentMethodState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    PaymentMethodModel? paymentMethodModelObj,
  }) {
    return PaymentMethodState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      paymentMethodModelObj:
          paymentMethodModelObj ?? this.paymentMethodModelObj,
    );
  }
}
