import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/fruits_page_screen/models/fruits_page_model.dart';part 'fruits_page_event.dart';part 'fruits_page_state.dart';/// A bloc that manages the state of a FruitsPage according to the event that is dispatched to it.
class FruitsPageBloc extends Bloc<FruitsPageEvent, FruitsPageState> {FruitsPageBloc(FruitsPageState initialState) : super(initialState) { on<FruitsPageInitialEvent>(_onInitialize); }

_onInitialize(FruitsPageInitialEvent event, Emitter<FruitsPageState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
