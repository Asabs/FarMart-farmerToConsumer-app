// ignore_for_file: must_be_immutable

part of 'pawpaw_two_bloc.dart';

/// Represents the state of PawpawTwo in the application.
class PawpawTwoState extends Equatable {
  PawpawTwoState({
    this.searchController,
    this.pawpawTwoModelObj,
  });

  TextEditingController? searchController;

  PawpawTwoModel? pawpawTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pawpawTwoModelObj,
      ];
  PawpawTwoState copyWith({
    TextEditingController? searchController,
    PawpawTwoModel? pawpawTwoModelObj,
  }) {
    return PawpawTwoState(
      searchController: searchController ?? this.searchController,
      pawpawTwoModelObj: pawpawTwoModelObj ?? this.pawpawTwoModelObj,
    );
  }
}
