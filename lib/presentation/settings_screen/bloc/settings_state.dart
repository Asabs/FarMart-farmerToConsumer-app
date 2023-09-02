// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

/// Represents the state of Settings in the application.
class SettingsState extends Equatable {
  SettingsState({
    this.fullnameController,
    this.hiddenatmnoController,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.settingsModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? hiddenatmnoController;

  SettingsModel? settingsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        fullnameController,
        hiddenatmnoController,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        settingsModelObj,
      ];
  SettingsState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? hiddenatmnoController,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    SettingsModel? settingsModelObj,
  }) {
    return SettingsState(
      fullnameController: fullnameController ?? this.fullnameController,
      hiddenatmnoController:
          hiddenatmnoController ?? this.hiddenatmnoController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      settingsModelObj: settingsModelObj ?? this.settingsModelObj,
    );
  }
}
