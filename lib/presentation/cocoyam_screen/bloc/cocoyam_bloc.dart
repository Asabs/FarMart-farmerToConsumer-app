import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cocoyam_item_model.dart';
import 'package:farmmart/presentation/cocoyam_screen/models/cocoyam_model.dart';
part 'cocoyam_event.dart';
part 'cocoyam_state.dart';

/// A bloc that manages the state of a Cocoyam according to the event that is dispatched to it.
class CocoyamBloc extends Bloc<CocoyamEvent, CocoyamState> {
  CocoyamBloc(CocoyamState initialState) : super(initialState) {
    on<CocoyamInitialEvent>(_onInitialize);
  }

  List<CocoyamItemModel> fillCocoyamItemList() {
    return List.generate(4, (index) => CocoyamItemModel());
  }

  _onInitialize(
    CocoyamInitialEvent event,
    Emitter<CocoyamState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        cocoyamModelObj: state.cocoyamModelObj?.copyWith(
      cocoyamItemList: fillCocoyamItemList(),
    )));
  }
}
