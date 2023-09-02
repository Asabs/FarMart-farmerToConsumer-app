// ignore_for_file: must_be_immutable

part of 'oranges_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Oranges widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrangesEvent extends Equatable {}

/// Event that is dispatched when the Oranges widget is first created.
class OrangesInitialEvent extends OrangesEvent {
  @override
  List<Object?> get props => [];
}
