// ignore_for_file: must_be_immutable

part of 'signup_page_bloc.dart';

/// Represents the state of SignupPage in the application.
class SignupPageState extends Equatable {
  SignupPageState({
    this.fullnameoneController,
    this.emailoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.isCheckbox2 = false,
    this.isCheckbox3 = false,
    this.signupPageModelObj,
  });

  TextEditingController? fullnameoneController;

  TextEditingController? emailoneController;

  TextEditingController? passwordoneController;

  SignupPageModel? signupPageModelObj;

  bool isShowPassword;

  bool isCheckbox;

  bool isCheckbox1;

  bool isCheckbox2;

  bool isCheckbox3;

  @override
  List<Object?> get props => [
        fullnameoneController,
        emailoneController,
        passwordoneController,
        isShowPassword,
        isCheckbox,
        isCheckbox1,
        isCheckbox2,
        isCheckbox3,
        signupPageModelObj,
      ];
  SignupPageState copyWith({
    TextEditingController? fullnameoneController,
    TextEditingController? emailoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    bool? isCheckbox,
    bool? isCheckbox1,
    bool? isCheckbox2,
    bool? isCheckbox3,
    SignupPageModel? signupPageModelObj,
  }) {
    return SignupPageState(
      fullnameoneController:
          fullnameoneController ?? this.fullnameoneController,
      emailoneController: emailoneController ?? this.emailoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      isCheckbox2: isCheckbox2 ?? this.isCheckbox2,
      isCheckbox3: isCheckbox3 ?? this.isCheckbox3,
      signupPageModelObj: signupPageModelObj ?? this.signupPageModelObj,
    );
  }
}
