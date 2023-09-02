// ignore_for_file: must_be_immutable

part of 'millet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Millet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MilletEvent extends Equatable {}

/// Event that is dispatched when the Millet widget is first created.
class MilletInitialEvent extends MilletEvent {
  @override
  List<Object?> get props => [];
}
