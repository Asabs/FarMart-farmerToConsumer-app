import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:farmmart/presentation/veggies_page_screen/models/veggies_page_model.dart';
part 'veggies_page_event.dart';
part 'veggies_page_state.dart';

/// A bloc that manages the state of a VeggiesPage according to the event that is dispatched to it.
class VeggiesPageBloc extends Bloc<VeggiesPageEvent, VeggiesPageState> {
  VeggiesPageBloc(VeggiesPageState initialState) : super(initialState) {
    on<VeggiesPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VeggiesPageInitialEvent event,
    Emitter<VeggiesPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
