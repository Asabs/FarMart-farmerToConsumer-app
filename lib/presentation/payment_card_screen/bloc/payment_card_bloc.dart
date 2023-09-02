import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/payment_card_screen/models/payment_card_model.dart';part 'payment_card_event.dart';part 'payment_card_state.dart';/// A bloc that manages the state of a PaymentCard according to the event that is dispatched to it.
class PaymentCardBloc extends Bloc<PaymentCardEvent, PaymentCardState> {PaymentCardBloc(PaymentCardState initialState) : super(initialState) { on<PaymentCardInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeCheckBox1Event>(_changeCheckBox1); on<ChangeCheckBox2Event>(_changeCheckBox2); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<PaymentCardState> emit, ) { emit(state.copyWith(isCheckbox: event.value)); } 
_changeCheckBox1(ChangeCheckBox1Event event, Emitter<PaymentCardState> emit, ) { emit(state.copyWith(isCheckbox1: event.value)); } 
_changeCheckBox2(ChangeCheckBox2Event event, Emitter<PaymentCardState> emit, ) { emit(state.copyWith(isCheckbox2: event.value)); } 
_onInitialize(PaymentCardInitialEvent event, Emitter<PaymentCardState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), isCheckbox: false, isCheckbox1: false, isCheckbox2: false)); } 
 }
