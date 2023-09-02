// ignore_for_file: must_be_immutable

part of 'millet_bloc.dart';

/// Represents the state of Millet in the application.
class MilletState extends Equatable {
  MilletState({
    this.searchController,
    this.milletModelObj,
  });

  TextEditingController? searchController;

  MilletModel? milletModelObj;

  @override
  List<Object?> get props => [
        searchController,
        milletModelObj,
      ];
  MilletState copyWith({
    TextEditingController? searchController,
    MilletModel? milletModelObj,
  }) {
    return MilletState(
      searchController: searchController ?? this.searchController,
      milletModelObj: milletModelObj ?? this.milletModelObj,
    );
  }
}
