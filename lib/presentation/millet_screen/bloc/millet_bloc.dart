import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/millet_item_model.dart';
import 'package:farmmart/presentation/millet_screen/models/millet_model.dart';
part 'millet_event.dart';
part 'millet_state.dart';

/// A bloc that manages the state of a Millet according to the event that is dispatched to it.
class MilletBloc extends Bloc<MilletEvent, MilletState> {
  MilletBloc(MilletState initialState) : super(initialState) {
    on<MilletInitialEvent>(_onInitialize);
  }

  List<MilletItemModel> fillMilletItemList() {
    return List.generate(4, (index) => MilletItemModel());
  }

  _onInitialize(
    MilletInitialEvent event,
    Emitter<MilletState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        milletModelObj: state.milletModelObj?.copyWith(
      milletItemList: fillMilletItemList(),
    )));
  }
}
