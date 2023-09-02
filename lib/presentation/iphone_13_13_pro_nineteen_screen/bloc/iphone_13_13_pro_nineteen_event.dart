// ignore_for_file: must_be_immutable

part of 'iphone_13_13_pro_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1313ProNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone1313ProNineteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone1313ProNineteen widget is first created.
class Iphone1313ProNineteenInitialEvent extends Iphone1313ProNineteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends Iphone1313ProNineteenEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends Iphone1313ProNineteenEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends Iphone1313ProNineteenEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
