// ignore_for_file: must_be_immutable

part of 'rice_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Rice widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiceEvent extends Equatable {}

/// Event that is dispatched when the Rice widget is first created.
class RiceInitialEvent extends RiceEvent {
  @override
  List<Object?> get props => [];
}
