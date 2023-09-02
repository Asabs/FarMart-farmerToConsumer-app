import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:farmmart/presentation/tubers_page_screen/models/tubers_page_model.dart';
part 'tubers_page_event.dart';
part 'tubers_page_state.dart';

/// A bloc that manages the state of a TubersPage according to the event that is dispatched to it.
class TubersPageBloc extends Bloc<TubersPageEvent, TubersPageState> {
  TubersPageBloc(TubersPageState initialState) : super(initialState) {
    on<TubersPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TubersPageInitialEvent event,
    Emitter<TubersPageState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
