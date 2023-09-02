import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pawpaw_two_item_model.dart';
import 'package:farmmart/presentation/pawpaw_two_screen/models/pawpaw_two_model.dart';
part 'pawpaw_two_event.dart';
part 'pawpaw_two_state.dart';

/// A bloc that manages the state of a PawpawTwo according to the event that is dispatched to it.
class PawpawTwoBloc extends Bloc<PawpawTwoEvent, PawpawTwoState> {
  PawpawTwoBloc(PawpawTwoState initialState) : super(initialState) {
    on<PawpawTwoInitialEvent>(_onInitialize);
  }

  List<PawpawTwoItemModel> fillPawpawTwoItemList() {
    return List.generate(4, (index) => PawpawTwoItemModel());
  }

  _onInitialize(
    PawpawTwoInitialEvent event,
    Emitter<PawpawTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pawpawTwoModelObj: state.pawpawTwoModelObj?.copyWith(
      pawpawTwoItemList: fillPawpawTwoItemList(),
    )));
  }
}
