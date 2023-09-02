import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/oranges_item_model.dart';
import 'package:farmmart/presentation/oranges_screen/models/oranges_model.dart';
part 'oranges_event.dart';
part 'oranges_state.dart';

/// A bloc that manages the state of a Oranges according to the event that is dispatched to it.
class OrangesBloc extends Bloc<OrangesEvent, OrangesState> {
  OrangesBloc(OrangesState initialState) : super(initialState) {
    on<OrangesInitialEvent>(_onInitialize);
  }

  List<OrangesItemModel> fillOrangesItemList() {
    return List.generate(4, (index) => OrangesItemModel());
  }

  _onInitialize(
    OrangesInitialEvent event,
    Emitter<OrangesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        orangesModelObj: state.orangesModelObj?.copyWith(
      orangesItemList: fillOrangesItemList(),
    )));
  }
}
