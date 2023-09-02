// ignore_for_file: must_be_immutable

part of 'cocoyam_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Cocoyam widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CocoyamEvent extends Equatable {}

/// Event that is dispatched when the Cocoyam widget is first created.
class CocoyamInitialEvent extends CocoyamEvent {
  @override
  List<Object?> get props => [];
}
