// ignore_for_file: must_be_immutable

part of 'cereal_page_bloc.dart';

/// Represents the state of CerealPage in the application.
class CerealPageState extends Equatable {
  CerealPageState({
    this.searchController,
    this.cerealPageModelObj,
  });

  TextEditingController? searchController;

  CerealPageModel? cerealPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cerealPageModelObj,
      ];
  CerealPageState copyWith({
    TextEditingController? searchController,
    CerealPageModel? cerealPageModelObj,
  }) {
    return CerealPageState(
      searchController: searchController ?? this.searchController,
      cerealPageModelObj: cerealPageModelObj ?? this.cerealPageModelObj,
    );
  }
}
