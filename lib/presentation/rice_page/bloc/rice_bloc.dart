import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/rice_item_model.dart';
import 'package:farmmart/presentation/rice_page/models/rice_model.dart';
part 'rice_event.dart';
part 'rice_state.dart';

/// A bloc that manages the state of a Rice according to the event that is dispatched to it.
class RiceBloc extends Bloc<RiceEvent, RiceState> {
  RiceBloc(RiceState initialState) : super(initialState) {
    on<RiceInitialEvent>(_onInitialize);
  }

  List<RiceItemModel> fillRiceItemList() {
    return List.generate(4, (index) => RiceItemModel());
  }

  _onInitialize(
    RiceInitialEvent event,
    Emitter<RiceState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        riceModelObj: state.riceModelObj?.copyWith(
      riceItemList: fillRiceItemList(),
    )));
  }
}
