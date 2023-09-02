// ignore_for_file: must_be_immutable

part of 'settings_passwordchange_bloc.dart';

/// Represents the state of SettingsPasswordchange in the application.
class SettingsPasswordchangeState extends Equatable {
  SettingsPasswordchangeState({
    this.nameController,
    this.passwordController,
    this.emailController,
    this.passwordoneController,
    this.newpasswordController,
    this.newpasswordoneController,
    this.settingsPasswordchangeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? passwordController;

  TextEditingController? emailController;

  TextEditingController? passwordoneController;

  TextEditingController? newpasswordController;

  TextEditingController? newpasswordoneController;

  SettingsPasswordchangeModel? settingsPasswordchangeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        passwordController,
        emailController,
        passwordoneController,
        newpasswordController,
        newpasswordoneController,
        settingsPasswordchangeModelObj,
      ];
  SettingsPasswordchangeState copyWith({
    TextEditingController? nameController,
    TextEditingController? passwordController,
    TextEditingController? emailController,
    TextEditingController? passwordoneController,
    TextEditingController? newpasswordController,
    TextEditingController? newpasswordoneController,
    SettingsPasswordchangeModel? settingsPasswordchangeModelObj,
  }) {
    return SettingsPasswordchangeState(
      nameController: nameController ?? this.nameController,
      passwordController: passwordController ?? this.passwordController,
      emailController: emailController ?? this.emailController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      newpasswordoneController:
          newpasswordoneController ?? this.newpasswordoneController,
      settingsPasswordchangeModelObj:
          settingsPasswordchangeModelObj ?? this.settingsPasswordchangeModelObj,
    );
  }
}
