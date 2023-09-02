// ignore_for_file: must_be_immutable

part of 'settings_passwordchange_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SettingsPasswordchange widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SettingsPasswordchangeEvent extends Equatable {}

/// Event that is dispatched when the SettingsPasswordchange widget is first created.
class SettingsPasswordchangeInitialEvent extends SettingsPasswordchangeEvent {
  @override
  List<Object?> get props => [];
}
