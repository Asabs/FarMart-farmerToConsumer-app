// ignore_for_file: must_be_immutable

part of 'potato_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Potato widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PotatoEvent extends Equatable {}

/// Event that is dispatched when the Potato widget is first created.
class PotatoInitialEvent extends PotatoEvent {
  @override
  List<Object?> get props => [];
}
