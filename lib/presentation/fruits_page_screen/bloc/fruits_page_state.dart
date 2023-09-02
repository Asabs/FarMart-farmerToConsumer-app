// ignore_for_file: must_be_immutable

part of 'fruits_page_bloc.dart';

/// Represents the state of FruitsPage in the application.
class FruitsPageState extends Equatable {
  FruitsPageState({
    this.searchController,
    this.fruitsPageModelObj,
  });

  TextEditingController? searchController;

  FruitsPageModel? fruitsPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        fruitsPageModelObj,
      ];
  FruitsPageState copyWith({
    TextEditingController? searchController,
    FruitsPageModel? fruitsPageModelObj,
  }) {
    return FruitsPageState(
      searchController: searchController ?? this.searchController,
      fruitsPageModelObj: fruitsPageModelObj ?? this.fruitsPageModelObj,
    );
  }
}
