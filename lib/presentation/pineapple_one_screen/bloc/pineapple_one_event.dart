// ignore_for_file: must_be_immutable

part of 'pineapple_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PineappleOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PineappleOneEvent extends Equatable {}

/// Event that is dispatched when the PineappleOne widget is first created.
class PineappleOneInitialEvent extends PineappleOneEvent {
  @override
  List<Object?> get props => [];
}
