// ignore_for_file: must_be_immutable

part of 'pawpaw_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PawpawOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PawpawOneEvent extends Equatable {}

/// Event that is dispatched when the PawpawOne widget is first created.
class PawpawOneInitialEvent extends PawpawOneEvent {
  @override
  List<Object?> get props => [];
}
