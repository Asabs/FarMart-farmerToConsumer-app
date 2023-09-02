// ignore_for_file: must_be_immutable

part of 'oranges_one_bloc.dart';

/// Represents the state of OrangesOne in the application.
class OrangesOneState extends Equatable {
  OrangesOneState({
    this.searchController,
    this.orangesOneModelObj,
  });

  TextEditingController? searchController;

  OrangesOneModel? orangesOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        orangesOneModelObj,
      ];
  OrangesOneState copyWith({
    TextEditingController? searchController,
    OrangesOneModel? orangesOneModelObj,
  }) {
    return OrangesOneState(
      searchController: searchController ?? this.searchController,
      orangesOneModelObj: orangesOneModelObj ?? this.orangesOneModelObj,
    );
  }
}
