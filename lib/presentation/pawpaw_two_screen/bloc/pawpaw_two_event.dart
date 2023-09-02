// ignore_for_file: must_be_immutable

part of 'pawpaw_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PawpawTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PawpawTwoEvent extends Equatable {}

/// Event that is dispatched when the PawpawTwo widget is first created.
class PawpawTwoInitialEvent extends PawpawTwoEvent {
  @override
  List<Object?> get props => [];
}
