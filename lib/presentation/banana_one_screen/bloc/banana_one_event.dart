// ignore_for_file: must_be_immutable

part of 'banana_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BananaOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BananaOneEvent extends Equatable {}

/// Event that is dispatched when the BananaOne widget is first created.
class BananaOneInitialEvent extends BananaOneEvent {
  @override
  List<Object?> get props => [];
}
