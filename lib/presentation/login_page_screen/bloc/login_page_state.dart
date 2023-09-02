// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.emailoneController,
    this.passwordoneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.loginPageModelObj,
  });

  TextEditingController? emailoneController;

  TextEditingController? passwordoneController;

  LoginPageModel? loginPageModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        emailoneController,
        passwordoneController,
        isShowPassword,
        isCheckbox,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? emailoneController,
    TextEditingController? passwordoneController,
    bool? isShowPassword,
    bool? isCheckbox,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      emailoneController: emailoneController ?? this.emailoneController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
