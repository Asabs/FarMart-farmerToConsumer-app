// ignore_for_file: must_be_immutable

part of 'tubers_page_bloc.dart';

/// Represents the state of TubersPage in the application.
class TubersPageState extends Equatable {
  TubersPageState({
    this.searchController,
    this.tubersPageModelObj,
  });

  TextEditingController? searchController;

  TubersPageModel? tubersPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        tubersPageModelObj,
      ];
  TubersPageState copyWith({
    TextEditingController? searchController,
    TubersPageModel? tubersPageModelObj,
  }) {
    return TubersPageState(
      searchController: searchController ?? this.searchController,
      tubersPageModelObj: tubersPageModelObj ?? this.tubersPageModelObj,
    );
  }
}
