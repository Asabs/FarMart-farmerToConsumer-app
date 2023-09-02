import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/oranges_one_item_model.dart';
import 'package:farmmart/presentation/oranges_one_screen/models/oranges_one_model.dart';
part 'oranges_one_event.dart';
part 'oranges_one_state.dart';

/// A bloc that manages the state of a OrangesOne according to the event that is dispatched to it.
class OrangesOneBloc extends Bloc<OrangesOneEvent, OrangesOneState> {
  OrangesOneBloc(OrangesOneState initialState) : super(initialState) {
    on<OrangesOneInitialEvent>(_onInitialize);
  }

  List<OrangesOneItemModel> fillOrangesOneItemList() {
    return List.generate(4, (index) => OrangesOneItemModel());
  }

  _onInitialize(
    OrangesOneInitialEvent event,
    Emitter<OrangesOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        orangesOneModelObj: state.orangesOneModelObj?.copyWith(
      orangesOneItemList: fillOrangesOneItemList(),
    )));
  }
}
