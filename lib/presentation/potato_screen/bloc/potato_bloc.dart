import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/potato_item_model.dart';
import 'package:farmmart/presentation/potato_screen/models/potato_model.dart';
part 'potato_event.dart';
part 'potato_state.dart';

/// A bloc that manages the state of a Potato according to the event that is dispatched to it.
class PotatoBloc extends Bloc<PotatoEvent, PotatoState> {
  PotatoBloc(PotatoState initialState) : super(initialState) {
    on<PotatoInitialEvent>(_onInitialize);
  }

  List<PotatoItemModel> fillPotatoItemList() {
    return List.generate(4, (index) => PotatoItemModel());
  }

  _onInitialize(
    PotatoInitialEvent event,
    Emitter<PotatoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        potatoModelObj: state.potatoModelObj?.copyWith(
      potatoItemList: fillPotatoItemList(),
    )));
  }
}
