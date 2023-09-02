// ignore_for_file: must_be_immutable

part of 'coconut_bloc.dart';

/// Represents the state of Coconut in the application.
class CoconutState extends Equatable {
  CoconutState({
    this.searchController,
    this.coconutModelObj,
  });

  TextEditingController? searchController;

  CoconutModel? coconutModelObj;

  @override
  List<Object?> get props => [
        searchController,
        coconutModelObj,
      ];
  CoconutState copyWith({
    TextEditingController? searchController,
    CoconutModel? coconutModelObj,
  }) {
    return CoconutState(
      searchController: searchController ?? this.searchController,
      coconutModelObj: coconutModelObj ?? this.coconutModelObj,
    );
  }
}
