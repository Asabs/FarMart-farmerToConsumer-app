import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/coconut_item_model.dart';
import 'package:farmmart/presentation/coconut_screen/models/coconut_model.dart';
part 'coconut_event.dart';
part 'coconut_state.dart';

/// A bloc that manages the state of a Coconut according to the event that is dispatched to it.
class CoconutBloc extends Bloc<CoconutEvent, CoconutState> {
  CoconutBloc(CoconutState initialState) : super(initialState) {
    on<CoconutInitialEvent>(_onInitialize);
  }

  List<CoconutItemModel> fillCoconutItemList() {
    return List.generate(4, (index) => CoconutItemModel());
  }

  _onInitialize(
    CoconutInitialEvent event,
    Emitter<CoconutState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        coconutModelObj: state.coconutModelObj?.copyWith(
      coconutItemList: fillCoconutItemList(),
    )));
  }
}
