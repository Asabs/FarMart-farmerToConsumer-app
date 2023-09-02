// ignore_for_file: must_be_immutable

part of 'yam_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Yam widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class YamEvent extends Equatable {}

/// Event that is dispatched when the Yam widget is first created.
class YamInitialEvent extends YamEvent {
  @override
  List<Object?> get props => [];
}
