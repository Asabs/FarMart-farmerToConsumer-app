// ignore_for_file: must_be_immutable

part of 'veggies_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VeggiesPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VeggiesPageEvent extends Equatable {}

/// Event that is dispatched when the VeggiesPage widget is first created.
class VeggiesPageInitialEvent extends VeggiesPageEvent {
  @override
  List<Object?> get props => [];
}
