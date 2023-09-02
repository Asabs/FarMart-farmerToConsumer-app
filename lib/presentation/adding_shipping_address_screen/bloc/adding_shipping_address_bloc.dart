import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:farmmart/presentation/adding_shipping_address_screen/models/adding_shipping_address_model.dart';part 'adding_shipping_address_event.dart';part 'adding_shipping_address_state.dart';/// A bloc that manages the state of a AddingShippingAddress according to the event that is dispatched to it.
class AddingShippingAddressBloc extends Bloc<AddingShippingAddressEvent, AddingShippingAddressState> {AddingShippingAddressBloc(AddingShippingAddressState initialState) : super(initialState) { on<AddingShippingAddressInitialEvent>(_onInitialize); }

_onInitialize(AddingShippingAddressInitialEvent event, Emitter<AddingShippingAddressState> emit, ) async  { emit(state.copyWith(fullnameController: TextEditingController(), addressController: TextEditingController(), cityController: TextEditingController(), zipcodeController: TextEditingController(), countryController: TextEditingController())); } 
 }
