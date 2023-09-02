import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/cereal_page_screen/models/cereal_page_model.dart';part 'cereal_page_event.dart';part 'cereal_page_state.dart';/// A bloc that manages the state of a CerealPage according to the event that is dispatched to it.
class CerealPageBloc extends Bloc<CerealPageEvent, CerealPageState> {CerealPageBloc(CerealPageState initialState) : super(initialState) { on<CerealPageInitialEvent>(_onInitialize); }

_onInitialize(CerealPageInitialEvent event, Emitter<CerealPageState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
