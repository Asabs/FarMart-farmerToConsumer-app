import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pineapple_item_model.dart';
import 'package:farmmart/presentation/pineapple_screen/models/pineapple_model.dart';
part 'pineapple_event.dart';
part 'pineapple_state.dart';

/// A bloc that manages the state of a Pineapple according to the event that is dispatched to it.
class PineappleBloc extends Bloc<PineappleEvent, PineappleState> {
  PineappleBloc(PineappleState initialState) : super(initialState) {
    on<PineappleInitialEvent>(_onInitialize);
  }

  List<PineappleItemModel> fillPineappleItemList() {
    return List.generate(4, (index) => PineappleItemModel());
  }

  _onInitialize(
    PineappleInitialEvent event,
    Emitter<PineappleState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pineappleModelObj: state.pineappleModelObj?.copyWith(
      pineappleItemList: fillPineappleItemList(),
    )));
  }
}
