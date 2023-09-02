// ignore_for_file: must_be_immutable

part of 'cereal_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CerealPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CerealPageEvent extends Equatable {}

/// Event that is dispatched when the CerealPage widget is first created.
class CerealPageInitialEvent extends CerealPageEvent {
  @override
  List<Object?> get props => [];
}
