// ignore_for_file: must_be_immutable

part of 'cassava_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Cassava widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CassavaEvent extends Equatable {}

/// Event that is dispatched when the Cassava widget is first created.
class CassavaInitialEvent extends CassavaEvent {
  @override
  List<Object?> get props => [];
}
