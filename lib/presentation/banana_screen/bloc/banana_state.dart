// ignore_for_file: must_be_immutable

part of 'banana_bloc.dart';

/// Represents the state of Banana in the application.
class BananaState extends Equatable {
  BananaState({
    this.searchController,
    this.bananaModelObj,
  });

  TextEditingController? searchController;

  BananaModel? bananaModelObj;

  @override
  List<Object?> get props => [
        searchController,
        bananaModelObj,
      ];
  BananaState copyWith({
    TextEditingController? searchController,
    BananaModel? bananaModelObj,
  }) {
    return BananaState(
      searchController: searchController ?? this.searchController,
      bananaModelObj: bananaModelObj ?? this.bananaModelObj,
    );
  }
}
