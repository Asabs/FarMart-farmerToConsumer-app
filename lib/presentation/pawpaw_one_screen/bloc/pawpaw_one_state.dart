// ignore_for_file: must_be_immutable

part of 'pawpaw_one_bloc.dart';

/// Represents the state of PawpawOne in the application.
class PawpawOneState extends Equatable {
  PawpawOneState({
    this.searchController,
    this.pawpawOneModelObj,
  });

  TextEditingController? searchController;

  PawpawOneModel? pawpawOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        pawpawOneModelObj,
      ];
  PawpawOneState copyWith({
    TextEditingController? searchController,
    PawpawOneModel? pawpawOneModelObj,
  }) {
    return PawpawOneState(
      searchController: searchController ?? this.searchController,
      pawpawOneModelObj: pawpawOneModelObj ?? this.pawpawOneModelObj,
    );
  }
}
