import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/banana_one_item_model.dart';
import 'package:farmmart/presentation/banana_one_screen/models/banana_one_model.dart';
part 'banana_one_event.dart';
part 'banana_one_state.dart';

/// A bloc that manages the state of a BananaOne according to the event that is dispatched to it.
class BananaOneBloc extends Bloc<BananaOneEvent, BananaOneState> {
  BananaOneBloc(BananaOneState initialState) : super(initialState) {
    on<BananaOneInitialEvent>(_onInitialize);
  }

  List<BananaOneItemModel> fillBananaOneItemList() {
    return List.generate(4, (index) => BananaOneItemModel());
  }

  _onInitialize(
    BananaOneInitialEvent event,
    Emitter<BananaOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        bananaOneModelObj: state.bananaOneModelObj?.copyWith(
      bananaOneItemList: fillBananaOneItemList(),
    )));
  }
}
