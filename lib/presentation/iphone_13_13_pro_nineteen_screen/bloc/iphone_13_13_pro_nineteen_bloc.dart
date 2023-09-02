import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/iphone_13_13_pro_nineteen_screen/models/iphone_13_13_pro_nineteen_model.dart';part 'iphone_13_13_pro_nineteen_event.dart';part 'iphone_13_13_pro_nineteen_state.dart';/// A bloc that manages the state of a Iphone1313ProNineteen according to the event that is dispatched to it.
class Iphone1313ProNineteenBloc extends Bloc<Iphone1313ProNineteenEvent, Iphone1313ProNineteenState> {Iphone1313ProNineteenBloc(Iphone1313ProNineteenState initialState) : super(initialState) { on<Iphone1313ProNineteenInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); on<ChangeSwitch2Event>(_changeSwitch2); }

_changeSwitch(ChangeSwitchEvent event, Emitter<Iphone1313ProNineteenState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<Iphone1313ProNineteenState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_changeSwitch2(ChangeSwitch2Event event, Emitter<Iphone1313ProNineteenState> emit, ) { emit(state.copyWith(isSelectedSwitch2: event.value)); } 
_onInitialize(Iphone1313ProNineteenInitialEvent event, Emitter<Iphone1313ProNineteenState> emit, ) async  { emit(state.copyWith(fullnameController: TextEditingController(), hiddenatmnoController: TextEditingController(), isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false)); } 
 }
