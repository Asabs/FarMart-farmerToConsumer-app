import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/signup_page_screen/models/signup_page_model.dart';part 'signup_page_event.dart';part 'signup_page_state.dart';/// A bloc that manages the state of a SignupPage according to the event that is dispatched to it.
class SignupPageBloc extends Bloc<SignupPageEvent, SignupPageState> {SignupPageBloc(SignupPageState initialState) : super(initialState) { on<SignupPageInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeCheckBox1Event>(_changeCheckBox1); on<ChangeCheckBox2Event>(_changeCheckBox2); on<ChangeCheckBox3Event>(_changeCheckBox3); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignupPageState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignupPageState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_changeCheckBox1(ChangeCheckBox1Event event, Emitter<SignupPageState> emit, ) { emit(state.copyWith(isCheckbox1: event.value)); } 
_changeCheckBox2(ChangeCheckBox2Event event, Emitter<SignupPageState> emit, ) { emit(state.copyWith(isCheckbox2: event.value)); } 
_changeCheckBox3(ChangeCheckBox3Event event, Emitter<SignupPageState> emit, ) { emit(state.copyWith(isCheckbox3: event.value)); } 
_onInitialize(SignupPageInitialEvent event, Emitter<SignupPageState> emit, ) async  { emit(state.copyWith(fullnameoneController: TextEditingController(), emailoneController: TextEditingController(), passwordoneController: TextEditingController(), isShowPassword: true, isCheckbox: false, isCheckbox1: false, isCheckbox2: false, isCheckbox3: false)); } 
 }
