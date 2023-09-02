// ignore_for_file: must_be_immutable

part of 'banana_one_bloc.dart';

/// Represents the state of BananaOne in the application.
class BananaOneState extends Equatable {
  BananaOneState({
    this.searchController,
    this.bananaOneModelObj,
  });

  TextEditingController? searchController;

  BananaOneModel? bananaOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bananaOneModelObj,
      ];
  BananaOneState copyWith({
    TextEditingController? searchController,
    BananaOneModel? bananaOneModelObj,
  }) {
    return BananaOneState(
      searchController: searchController ?? this.searchController,
      bananaOneModelObj: bananaOneModelObj ?? this.bananaOneModelObj,
    );
  }
}
