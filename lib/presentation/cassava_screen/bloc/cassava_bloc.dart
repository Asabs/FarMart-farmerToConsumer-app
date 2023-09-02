import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cassava_item_model.dart';
import 'package:farmmart/presentation/cassava_screen/models/cassava_model.dart';
part 'cassava_event.dart';
part 'cassava_state.dart';

/// A bloc that manages the state of a Cassava according to the event that is dispatched to it.
class CassavaBloc extends Bloc<CassavaEvent, CassavaState> {
  CassavaBloc(CassavaState initialState) : super(initialState) {
    on<CassavaInitialEvent>(_onInitialize);
  }

  List<CassavaItemModel> fillCassavaItemList() {
    return List.generate(4, (index) => CassavaItemModel());
  }

  _onInitialize(
    CassavaInitialEvent event,
    Emitter<CassavaState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        cassavaModelObj: state.cassavaModelObj?.copyWith(
      cassavaItemList: fillCassavaItemList(),
    )));
  }
}
