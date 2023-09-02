// ignore_for_file: must_be_immutable

part of 'pawpaw_bloc.dart';

/// Represents the state of Pawpaw in the application.
class PawpawState extends Equatable {
  PawpawState({
    this.searchController,
    this.pawpawModelObj,
  });

  TextEditingController? searchController;

  PawpawModel? pawpawModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pawpawModelObj,
      ];
  PawpawState copyWith({
    TextEditingController? searchController,
    PawpawModel? pawpawModelObj,
  }) {
    return PawpawState(
      searchController: searchController ?? this.searchController,
      pawpawModelObj: pawpawModelObj ?? this.pawpawModelObj,
    );
  }
}
