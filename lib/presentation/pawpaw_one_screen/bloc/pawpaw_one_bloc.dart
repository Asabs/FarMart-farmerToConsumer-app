import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/pawpaw_one_item_model.dart';
import 'package:farmmart/presentation/pawpaw_one_screen/models/pawpaw_one_model.dart';
part 'pawpaw_one_event.dart';
part 'pawpaw_one_state.dart';

/// A bloc that manages the state of a PawpawOne according to the event that is dispatched to it.
class PawpawOneBloc extends Bloc<PawpawOneEvent, PawpawOneState> {
  PawpawOneBloc(PawpawOneState initialState) : super(initialState) {
    on<PawpawOneInitialEvent>(_onInitialize);
  }

  List<PawpawOneItemModel> fillPawpawOneItemList() {
    return List.generate(4, (index) => PawpawOneItemModel());
  }

  _onInitialize(
    PawpawOneInitialEvent event,
    Emitter<PawpawOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        pawpawOneModelObj: state.pawpawOneModelObj?.copyWith(
      pawpawOneItemList: fillPawpawOneItemList(),
    )));
  }
}
