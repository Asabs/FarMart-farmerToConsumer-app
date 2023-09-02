import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sweet_potato_item_model.dart';
import 'package:farmmart/presentation/sweet_potato_screen/models/sweet_potato_model.dart';
part 'sweet_potato_event.dart';
part 'sweet_potato_state.dart';

/// A bloc that manages the state of a SweetPotato according to the event that is dispatched to it.
class SweetPotatoBloc extends Bloc<SweetPotatoEvent, SweetPotatoState> {
  SweetPotatoBloc(SweetPotatoState initialState) : super(initialState) {
    on<SweetPotatoInitialEvent>(_onInitialize);
  }

  List<SweetPotatoItemModel> fillSweetPotatoItemList() {
    return List.generate(4, (index) => SweetPotatoItemModel());
  }

  _onInitialize(
    SweetPotatoInitialEvent event,
    Emitter<SweetPotatoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        sweetPotatoModelObj: state.sweetPotatoModelObj?.copyWith(
      sweetPotatoItemList: fillSweetPotatoItemList(),
    )));
  }
}
