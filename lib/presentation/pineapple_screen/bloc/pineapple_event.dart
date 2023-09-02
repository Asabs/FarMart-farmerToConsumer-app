// ignore_for_file: must_be_immutable

part of 'pineapple_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Pineapple widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PineappleEvent extends Equatable {}

/// Event that is dispatched when the Pineapple widget is first created.
class PineappleInitialEvent extends PineappleEvent {
  @override
  List<Object?> get props => [];
}
