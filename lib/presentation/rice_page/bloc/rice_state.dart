// ignore_for_file: must_be_immutable

part of 'rice_bloc.dart';

/// Represents the state of Rice in the application.
class RiceState extends Equatable {
  RiceState({
    this.searchController,
    this.riceModelObj,
  });

  TextEditingController? searchController;

  RiceModel? riceModelObj;

  @override
  List<Object?> get props => [
        searchController,
        riceModelObj,
      ];
  RiceState copyWith({
    TextEditingController? searchController,
    RiceModel? riceModelObj,
  }) {
    return RiceState(
      searchController: searchController ?? this.searchController,
      riceModelObj: riceModelObj ?? this.riceModelObj,
    );
  }
}
