import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banana_item_model.dart';
import 'package:farmmart/presentation/banana_screen/models/banana_model.dart';
part 'banana_event.dart';
part 'banana_state.dart';

/// A bloc that manages the state of a Banana according to the event that is dispatched to it.
class BananaBloc extends Bloc<BananaEvent, BananaState> {
  BananaBloc(BananaState initialState) : super(initialState) {
    on<BananaInitialEvent>(_onInitialize);
  }

  List<BananaItemModel> fillBananaItemList() {
    return List.generate(4, (index) => BananaItemModel());
  }

  _onInitialize(
    BananaInitialEvent event,
    Emitter<BananaState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        bananaModelObj: state.bananaModelObj?.copyWith(
      bananaItemList: fillBananaItemList(),
    )));
  }
}
