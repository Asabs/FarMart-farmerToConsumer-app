import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yam_item_model.dart';
import 'package:farmmart/presentation/yam_screen/models/yam_model.dart';
part 'yam_event.dart';
part 'yam_state.dart';

/// A bloc that manages the state of a Yam according to the event that is dispatched to it.
class YamBloc extends Bloc<YamEvent, YamState> {
  YamBloc(YamState initialState) : super(initialState) {
    on<YamInitialEvent>(_onInitialize);
  }

  List<YamItemModel> fillYamItemList() {
    return List.generate(4, (index) => YamItemModel());
  }

  _onInitialize(
    YamInitialEvent event,
    Emitter<YamState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        yamModelObj: state.yamModelObj?.copyWith(
      yamItemList: fillYamItemList(),
    )));
  }
}
