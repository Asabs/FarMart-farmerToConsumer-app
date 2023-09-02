// ignore_for_file: must_be_immutable

part of 'pawpaw_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Pawpaw widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PawpawEvent extends Equatable {}

/// Event that is dispatched when the Pawpaw widget is first created.
class PawpawInitialEvent extends PawpawEvent {
  @override
  List<Object?> get props => [];
}
