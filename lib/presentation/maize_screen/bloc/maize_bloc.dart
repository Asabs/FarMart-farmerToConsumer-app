import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/maize_item_model.dart';
import 'package:farmmart/presentation/maize_screen/models/maize_model.dart';
part 'maize_event.dart';
part 'maize_state.dart';

/// A bloc that manages the state of a Maize according to the event that is dispatched to it.
class MaizeBloc extends Bloc<MaizeEvent, MaizeState> {
  MaizeBloc(MaizeState initialState) : super(initialState) {
    on<MaizeInitialEvent>(_onInitialize);
  }

  List<MaizeItemModel> fillMaizeItemList() {
    return List.generate(4, (index) => MaizeItemModel());
  }

  _onInitialize(
    MaizeInitialEvent event,
    Emitter<MaizeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        maizeModelObj: state.maizeModelObj?.copyWith(
      maizeItemList: fillMaizeItemList(),
    )));
  }
}
