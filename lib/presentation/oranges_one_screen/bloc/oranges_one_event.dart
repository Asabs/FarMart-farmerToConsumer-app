// ignore_for_file: must_be_immutable

part of 'oranges_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrangesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrangesOneEvent extends Equatable {}

/// Event that is dispatched when the OrangesOne widget is first created.
class OrangesOneInitialEvent extends OrangesOneEvent {
  @override
  List<Object?> get props => [];
}
