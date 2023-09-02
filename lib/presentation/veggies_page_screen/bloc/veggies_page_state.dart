// ignore_for_file: must_be_immutable

part of 'veggies_page_bloc.dart';

/// Represents the state of VeggiesPage in the application.
class VeggiesPageState extends Equatable {
  VeggiesPageState({
    this.searchController,
    this.veggiesPageModelObj,
  });

  TextEditingController? searchController;

  VeggiesPageModel? veggiesPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        veggiesPageModelObj,
      ];
  VeggiesPageState copyWith({
    TextEditingController? searchController,
    VeggiesPageModel? veggiesPageModelObj,
  }) {
    return VeggiesPageState(
      searchController: searchController ?? this.searchController,
      veggiesPageModelObj: veggiesPageModelObj ?? this.veggiesPageModelObj,
    );
  }
}
