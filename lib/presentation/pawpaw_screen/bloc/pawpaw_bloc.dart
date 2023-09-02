import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pawpaw_item_model.dart';
import 'package:farmmart/presentation/pawpaw_screen/models/pawpaw_model.dart';
part 'pawpaw_event.dart';
part 'pawpaw_state.dart';

/// A bloc that manages the state of a Pawpaw according to the event that is dispatched to it.
class PawpawBloc extends Bloc<PawpawEvent, PawpawState> {
  PawpawBloc(PawpawState initialState) : super(initialState) {
    on<PawpawInitialEvent>(_onInitialize);
  }

  List<PawpawItemModel> fillPawpawItemList() {
    return List.generate(4, (index) => PawpawItemModel());
  }

  _onInitialize(
    PawpawInitialEvent event,
    Emitter<PawpawState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pawpawModelObj: state.pawpawModelObj?.copyWith(
      pawpawItemList: fillPawpawItemList(),
    )));
  }
}
