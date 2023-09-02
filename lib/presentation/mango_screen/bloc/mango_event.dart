// ignore_for_file: must_be_immutable

part of 'mango_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Mango widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MangoEvent extends Equatable {}

/// Event that is dispatched when the Mango widget is first created.
class MangoInitialEvent extends MangoEvent {
  @override
  List<Object?> get props => [];
}
