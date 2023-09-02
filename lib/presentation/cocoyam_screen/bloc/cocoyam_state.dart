// ignore_for_file: must_be_immutable

part of 'cocoyam_bloc.dart';

/// Represents the state of Cocoyam in the application.
class CocoyamState extends Equatable {
  CocoyamState({
    this.searchController,
    this.cocoyamModelObj,
  });

  TextEditingController? searchController;

  CocoyamModel? cocoyamModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cocoyamModelObj,
      ];
  CocoyamState copyWith({
    TextEditingController? searchController,
    CocoyamModel? cocoyamModelObj,
  }) {
    return CocoyamState(
      searchController: searchController ?? this.searchController,
      cocoyamModelObj: cocoyamModelObj ?? this.cocoyamModelObj,
    );
  }
}
