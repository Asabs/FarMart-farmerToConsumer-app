// ignore_for_file: must_be_immutable

part of 'banana_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Banana widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BananaEvent extends Equatable {}

/// Event that is dispatched when the Banana widget is first created.
class BananaInitialEvent extends BananaEvent {
  @override
  List<Object?> get props => [];
}
