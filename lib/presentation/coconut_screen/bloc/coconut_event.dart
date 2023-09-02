// ignore_for_file: must_be_immutable

part of 'coconut_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Coconut widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoconutEvent extends Equatable {}

/// Event that is dispatched when the Coconut widget is first created.
class CoconutInitialEvent extends CoconutEvent {
  @override
  List<Object?> get props => [];
}
