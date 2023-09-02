// ignore_for_file: must_be_immutable

part of 'wheat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Wheat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WheatEvent extends Equatable {}

/// Event that is dispatched when the Wheat widget is first created.
class WheatInitialEvent extends WheatEvent {
  @override
  List<Object?> get props => [];
}
