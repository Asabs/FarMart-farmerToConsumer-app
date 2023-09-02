// ignore_for_file: must_be_immutable

part of 'payment_card_bloc.dart';

/// Represents the state of PaymentCard in the application.
class PaymentCardState extends Equatable {
  PaymentCardState({
    this.nameController,
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.paymentCardModelObj,
  });

  TextEditingController? nameController;

  PaymentCardModel? paymentCardModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  @override
  List<Object?> get props => [
        nameController,
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        paymentCardModelObj,
      ];
  PaymentCardState copyWith({
    TextEditingController? nameController,
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    PaymentCardModel? paymentCardModelObj,
  }) {
    return PaymentCardState(
      nameController: nameController ?? this.nameController,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      paymentCardModelObj: paymentCardModelObj ?? this.paymentCardModelObj,
    );
  }
}
