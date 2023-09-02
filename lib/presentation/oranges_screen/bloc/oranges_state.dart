// ignore_for_file: must_be_immutable

part of 'oranges_bloc.dart';

/// Represents the state of Oranges in the application.
class OrangesState extends Equatable {
  OrangesState({
    this.searchController,
    this.orangesModelObj,
  });

  TextEditingController? searchController;

  OrangesModel? orangesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        orangesModelObj,
      ];
  OrangesState copyWith({
    TextEditingController? searchController,
    OrangesModel? orangesModelObj,
  }) {
    return OrangesState(
      searchController: searchController ?? this.searchController,
      orangesModelObj: orangesModelObj ?? this.orangesModelObj,
    );
  }
}
