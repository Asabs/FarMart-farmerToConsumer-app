import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/homepage_container_screen/models/homepage_container_model.dart';part 'homepage_container_event.dart';part 'homepage_container_state.dart';/// A bloc that manages the state of a HomepageContainer according to the event that is dispatched to it.
class HomepageContainerBloc extends Bloc<HomepageContainerEvent, HomepageContainerState> {HomepageContainerBloc(HomepageContainerState initialState) : super(initialState) { on<HomepageContainerInitialEvent>(_onInitialize); }

_onInitialize(HomepageContainerInitialEvent event, Emitter<HomepageContainerState> emit, ) async  {  } 
 }
