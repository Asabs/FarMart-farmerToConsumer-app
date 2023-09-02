// ignore_for_file: must_be_immutable

part of 'mango_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MangoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MangoOneEvent extends Equatable {}

/// Event that is dispatched when the MangoOne widget is first created.
class MangoOneInitialEvent extends MangoOneEvent {
  @override
  List<Object?> get props => [];
}
