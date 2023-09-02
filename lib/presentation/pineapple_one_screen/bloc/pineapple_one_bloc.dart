import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pineapple_one_item_model.dart';
import 'package:farmmart/presentation/pineapple_one_screen/models/pineapple_one_model.dart';
part 'pineapple_one_event.dart';
part 'pineapple_one_state.dart';

/// A bloc that manages the state of a PineappleOne according to the event that is dispatched to it.
class PineappleOneBloc extends Bloc<PineappleOneEvent, PineappleOneState> {
  PineappleOneBloc(PineappleOneState initialState) : super(initialState) {
    on<PineappleOneInitialEvent>(_onInitialize);
  }

  List<PineappleOneItemModel> fillPineappleOneItemList() {
    return List.generate(4, (index) => PineappleOneItemModel());
  }

  _onInitialize(
    PineappleOneInitialEvent event,
    Emitter<PineappleOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pineappleOneModelObj: state.pineappleOneModelObj?.copyWith(
      pineappleOneItemList: fillPineappleOneItemList(),
    )));
  }
}
