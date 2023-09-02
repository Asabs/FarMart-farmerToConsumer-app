import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coconut_one_item_model.dart';
import 'package:farmmart/presentation/coconut_one_screen/models/coconut_one_model.dart';
part 'coconut_one_event.dart';
part 'coconut_one_state.dart';

/// A bloc that manages the state of a CoconutOne according to the event that is dispatched to it.
class CoconutOneBloc extends Bloc<CoconutOneEvent, CoconutOneState> {
  CoconutOneBloc(CoconutOneState initialState) : super(initialState) {
    on<CoconutOneInitialEvent>(_onInitialize);
  }

  List<CoconutOneItemModel> fillCoconutOneItemList() {
    return List.generate(4, (index) => CoconutOneItemModel());
  }

  _onInitialize(
    CoconutOneInitialEvent event,
    Emitter<CoconutOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        coconutOneModelObj: state.coconutOneModelObj?.copyWith(
      coconutOneItemList: fillCoconutOneItemList(),
    )));
  }
}
