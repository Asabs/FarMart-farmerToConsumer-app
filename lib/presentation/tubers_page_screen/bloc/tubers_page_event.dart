// ignore_for_file: must_be_immutable

part of 'tubers_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TubersPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TubersPageEvent extends Equatable {}

/// Event that is dispatched when the TubersPage widget is first created.
class TubersPageInitialEvent extends TubersPageEvent {
  @override
  List<Object?> get props => [];
}
