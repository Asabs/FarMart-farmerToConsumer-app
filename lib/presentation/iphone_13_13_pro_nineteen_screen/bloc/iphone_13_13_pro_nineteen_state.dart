// ignore_for_file: must_be_immutable

part of 'iphone_13_13_pro_nineteen_bloc.dart';

/// Represents the state of Iphone1313ProNineteen in the application.
class Iphone1313ProNineteenState extends Equatable {
  Iphone1313ProNineteenState({
    this.fullnameController,
    this.hiddenatmnoController,
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.iphone1313ProNineteenModelObj,
  });

  TextEditingController? fullnameController;

  TextEditingController? hiddenatmnoController;

  Iphone1313ProNineteenModel? iphone1313ProNineteenModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  @override
  List<Object?> get props => [
        fullnameController,
        hiddenatmnoController,
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        iphone1313ProNineteenModelObj,
      ];
  Iphone1313ProNineteenState copyWith({
    TextEditingController? fullnameController,
    TextEditingController? hiddenatmnoController,
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    Iphone1313ProNineteenModel? iphone1313ProNineteenModelObj,
  }) {
    return Iphone1313ProNineteenState(
      fullnameController: fullnameController ?? this.fullnameController,
      hiddenatmnoController:
          hiddenatmnoController ?? this.hiddenatmnoController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      iphone1313ProNineteenModelObj:
          iphone1313ProNineteenModelObj ?? this.iphone1313ProNineteenModelObj,
    );
  }
}
