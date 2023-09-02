// ignore_for_file: must_be_immutable

part of 'adding_shipping_address_bloc.dart';

/// Represents the state of AddingShippingAddress in the application.
class AddingShippingAddressState extends Equatable {
  AddingShippingAddressState({
    this.fullnameController,
    this.addressController,
    this.cityController,
    this.zipcodeController,
    this.countryController,
    this.addingShippingAddressModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? addressController;

  TextEditingController? cityController;

  TextEditingController? zipcodeController;

  TextEditingController? countryController;

  AddingShippingAddressModel? addingShippingAddressModelObj;

  @override
  List<Object?> get props => [
        fullnameController,
        addressController,
        cityController,
        zipcodeController,
        countryController,
        addingShippingAddressModelObj,
      ];
  AddingShippingAddressState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? addressController,
    TextEditingController? cityController,
    TextEditingController? zipcodeController,
    TextEditingController? countryController,
    AddingShippingAddressModel? addingShippingAddressModelObj,
  }) {
    return AddingShippingAddressState(
      fullnameController: fullnameController ?? this.fullnameController,
      addressController: addressController ?? this.addressController,
      cityController: cityController ?? this.cityController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      countryController: countryController ?? this.countryController,
      addingShippingAddressModelObj:
          addingShippingAddressModelObj ?? this.addingShippingAddressModelObj,
    );
  }
}
