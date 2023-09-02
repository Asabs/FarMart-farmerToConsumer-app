// ignore_for_file: must_be_immutable

part of 'pineapple_one_bloc.dart';

/// Represents the state of PineappleOne in the application.
class PineappleOneState extends Equatable {
  PineappleOneState({
    this.searchController,
    this.pineappleOneModelObj,
  });

  TextEditingController? searchController;

  PineappleOneModel? pineappleOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pineappleOneModelObj,
      ];
  PineappleOneState copyWith({
    TextEditingController? searchController,
    PineappleOneModel? pineappleOneModelObj,
  }) {
    return PineappleOneState(
      searchController: searchController ?? this.searchController,
      pineappleOneModelObj: pineappleOneModelObj ?? this.pineappleOneModelObj,
    );
  }
}
