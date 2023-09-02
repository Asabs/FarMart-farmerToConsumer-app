// ignore_for_file: must_be_immutable

part of 'coconut_one_bloc.dart';

/// Represents the state of CoconutOne in the application.
class CoconutOneState extends Equatable {
  CoconutOneState({
    this.searchController,
    this.coconutOneModelObj,
  });

  TextEditingController? searchController;

  CoconutOneModel? coconutOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        coconutOneModelObj,
      ];
  CoconutOneState copyWith({
    TextEditingController? searchController,
    CoconutOneModel? coconutOneModelObj,
  }) {
    return CoconutOneState(
      searchController: searchController ?? this.searchController,
      coconutOneModelObj: coconutOneModelObj ?? this.coconutOneModelObj,
    );
  }
}
