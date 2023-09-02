// ignore_for_file: must_be_immutable

part of 'beans_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Beans widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BeansEvent extends Equatable {}

/// Event that is dispatched when the Beans widget is first created.
class BeansInitialEvent extends BeansEvent {
  @override
  List<Object?> get props => [];
}
