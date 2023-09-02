// ignore_for_file: must_be_immutable

part of 'maize_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Maize widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MaizeEvent extends Equatable {}

/// Event that is dispatched when the Maize widget is first created.
class MaizeInitialEvent extends MaizeEvent {
  @override
  List<Object?> get props => [];
}
