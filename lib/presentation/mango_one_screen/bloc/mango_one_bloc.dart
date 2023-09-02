import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mango_one_item_model.dart';
import 'package:farmmart/presentation/mango_one_screen/models/mango_one_model.dart';
part 'mango_one_event.dart';
part 'mango_one_state.dart';

/// A bloc that manages the state of a MangoOne according to the event that is dispatched to it.
class MangoOneBloc extends Bloc<MangoOneEvent, MangoOneState> {
  MangoOneBloc(MangoOneState initialState) : super(initialState) {
    on<MangoOneInitialEvent>(_onInitialize);
  }

  List<MangoOneItemModel> fillMangoOneItemList() {
    return List.generate(4, (index) => MangoOneItemModel());
  }

  _onInitialize(
    MangoOneInitialEvent event,
    Emitter<MangoOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        mangoOneModelObj: state.mangoOneModelObj?.copyWith(
      mangoOneItemList: fillMangoOneItemList(),
    )));
  }
}
