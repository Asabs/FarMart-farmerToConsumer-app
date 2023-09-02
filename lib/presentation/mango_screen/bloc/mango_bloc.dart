import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mango_item_model.dart';
import 'package:farmmart/presentation/mango_screen/models/mango_model.dart';
part 'mango_event.dart';
part 'mango_state.dart';

/// A bloc that manages the state of a Mango according to the event that is dispatched to it.
class MangoBloc extends Bloc<MangoEvent, MangoState> {
  MangoBloc(MangoState initialState) : super(initialState) {
    on<MangoInitialEvent>(_onInitialize);
  }

  List<MangoItemModel> fillMangoItemList() {
    return List.generate(4, (index) => MangoItemModel());
  }

  _onInitialize(
    MangoInitialEvent event,
    Emitter<MangoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        mangoModelObj: state.mangoModelObj?.copyWith(
      mangoItemList: fillMangoItemList(),
    )));
  }
}
