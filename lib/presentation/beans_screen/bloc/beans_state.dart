// ignore_for_file: must_be_immutable

part of 'beans_bloc.dart';

/// Represents the state of Beans in the application.
class BeansState extends Equatable {
  BeansState({
    this.searchController,
    this.beansModelObj,
  });

  TextEditingController? searchController;

  BeansModel? beansModelObj;

  @override
  List<Object?> get props => [
        searchController,
        beansModelObj,
      ];
  BeansState copyWith({
    TextEditingController? searchController,
    BeansModel? beansModelObj,
  }) {
    return BeansState(
      searchController: searchController ?? this.searchController,
      beansModelObj: beansModelObj ?? this.beansModelObj,
    );
  }
}
