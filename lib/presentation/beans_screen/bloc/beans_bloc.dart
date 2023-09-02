import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/beans_item_model.dart';
import 'package:farmmart/presentation/beans_screen/models/beans_model.dart';
part 'beans_event.dart';
part 'beans_state.dart';

/// A bloc that manages the state of a Beans according to the event that is dispatched to it.
class BeansBloc extends Bloc<BeansEvent, BeansState> {
  BeansBloc(BeansState initialState) : super(initialState) {
    on<BeansInitialEvent>(_onInitialize);
  }

  List<BeansItemModel> fillBeansItemList() {
    return List.generate(4, (index) => BeansItemModel());
  }

  _onInitialize(
    BeansInitialEvent event,
    Emitter<BeansState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        beansModelObj: state.beansModelObj?.copyWith(
      beansItemList: fillBeansItemList(),
    )));
  }
}
