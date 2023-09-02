// ignore_for_file: must_be_immutable

part of 'coconut_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CoconutOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CoconutOneEvent extends Equatable {}

/// Event that is dispatched when the CoconutOne widget is first created.
class CoconutOneInitialEvent extends CoconutOneEvent {
  @override
  List<Object?> get props => [];
}
