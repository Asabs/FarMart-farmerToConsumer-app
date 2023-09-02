// ignore_for_file: must_be_immutable

part of 'fruits_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FruitsPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FruitsPageEvent extends Equatable {}

/// Event that is dispatched when the FruitsPage widget is first created.
class FruitsPageInitialEvent extends FruitsPageEvent {
  @override
  List<Object?> get props => [];
}
