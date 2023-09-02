// ignore_for_file: must_be_immutable

part of 'payment_card_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentCard widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentCardEvent extends Equatable {}

/// Event that is dispatched when the PaymentCard widget is first created.
class PaymentCardInitialEvent extends PaymentCardEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PaymentCardEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends PaymentCardEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends PaymentCardEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
