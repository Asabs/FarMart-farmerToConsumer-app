// ignore_for_file: must_be_immutable

part of 'sweet_potato_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SweetPotato widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SweetPotatoEvent extends Equatable {}

/// Event that is dispatched when the SweetPotato widget is first created.
class SweetPotatoInitialEvent extends SweetPotatoEvent {
  @override
  List<Object?> get props => [];
}
