// ignore_for_file: must_be_immutable

part of 'wheat_bloc.dart';

/// Represents the state of Wheat in the application.
class WheatState extends Equatable {
  WheatState({
    this.searchController,
    this.wheatModelObj,
  });

  TextEditingController? searchController;

  WheatModel? wheatModelObj;

  @override
  List<Object?> get props => [
        searchController,
        wheatModelObj,
      ];
  WheatState copyWith({
    TextEditingController? searchController,
    WheatModel? wheatModelObj,
  }) {
    return WheatState(
      searchController: searchController ?? this.searchController,
      wheatModelObj: wheatModelObj ?? this.wheatModelObj,
    );
  }
}
