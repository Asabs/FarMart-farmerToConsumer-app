// ignore_for_file: must_be_immutable

part of 'pineapple_bloc.dart';

/// Represents the state of Pineapple in the application.
class PineappleState extends Equatable {
  PineappleState({
    this.searchController,
    this.pineappleModelObj,
  });

  TextEditingController? searchController;

  PineappleModel? pineappleModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pineappleModelObj,
      ];
  PineappleState copyWith({
    TextEditingController? searchController,
    PineappleModel? pineappleModelObj,
  }) {
    return PineappleState(
      searchController: searchController ?? this.searchController,
      pineappleModelObj: pineappleModelObj ?? this.pineappleModelObj,
    );
  }
}
