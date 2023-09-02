import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/login_page_screen/models/login_page_model.dart';import 'package:farmmart/data/models/loginDeviceAuth/post_login_device_auth_resp.dart';import 'package:farmmart/data/models/loginDeviceAuth/post_login_device_auth_req.dart';import 'dart:async';import 'package:farmmart/data/repository/repository.dart';import 'package:farmmart/core/constants/Login.dart';part 'login_page_event.dart';part 'login_page_state.dart';/// A bloc that manages the state of a LoginPage according to the event that is dispatched to it.
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {LoginPageBloc(LoginPageState initialState) : super(initialState) { on<LoginPageInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

final _repository = Repository();

var postLoginDeviceAuthResp = PostLoginDeviceAuthResp();

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginPageState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<LoginPageState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_onInitialize(LoginPageInitialEvent event, Emitter<LoginPageState> emit, ) async  { emit(state.copyWith(emailoneController: TextEditingController(), passwordoneController: TextEditingController(), isShowPassword: true, isCheckbox: false));NavigatorService.pushNamed(AppRoutes.homepageContainerScreen, ); } 
/// Calls [https://nodedemo.dhiwise.co/device/auth/login] with the provided event and emits the state.
///
/// The [dynamic] parameter is used for handling event data
/// The [emit] parameter is used for emitting the state
///
/// Throws an error if an error occurs during the API call process.
FutureOr<void> _callLoginDeviceAuth(dynamic event, Emitter<LoginPageState> emit, ) async  { var postLoginDeviceAuthReq = PostLoginDeviceAuthReq(
username: Login.email,password: Login.password,
);
await _repository.loginDeviceAuth(
headers: {'Content-Type': 'application/json',},
requestData: postLoginDeviceAuthReq.toJson(),
)
.then((value) async {

	postLoginDeviceAuthResp = value;
_onLoginDeviceAuthSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onLoginDeviceAuthError();
})
; } 
void _onLoginDeviceAuthSuccess(PostLoginDeviceAuthResp resp, Emitter<LoginPageState> emit, ) { 
 } 
void _onLoginDeviceAuthError() { 
 //implement error method body...
 } 
 }
