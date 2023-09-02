import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/wheat_item_model.dart';
import 'package:farmmart/presentation/wheat_screen/models/wheat_model.dart';
part 'wheat_event.dart';
part 'wheat_state.dart';

/// A bloc that manages the state of a Wheat according to the event that is dispatched to it.
class WheatBloc extends Bloc<WheatEvent, WheatState> {
  WheatBloc(WheatState initialState) : super(initialState) {
    on<WheatInitialEvent>(_onInitialize);
  }

  List<WheatItemModel> fillWheatItemList() {
    return List.generate(4, (index) => WheatItemModel());
  }

  _onInitialize(
    WheatInitialEvent event,
    Emitter<WheatState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        wheatModelObj: state.wheatModelObj?.copyWith(
      wheatItemList: fillWheatItemList(),
    )));
  }
}
