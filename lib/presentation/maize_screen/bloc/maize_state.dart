// ignore_for_file: must_be_immutable

part of 'maize_bloc.dart';

/// Represents the state of Maize in the application.
class MaizeState extends Equatable {
  MaizeState({
    this.searchController,
    this.maizeModelObj,
  });

  TextEditingController? searchController;

  MaizeModel? maizeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        maizeModelObj,
      ];
  MaizeState copyWith({
    TextEditingController? searchController,
    MaizeModel? maizeModelObj,
  }) {
    return MaizeState(
      searchController: searchController ?? this.searchController,
      maizeModelObj: maizeModelObj ?? this.maizeModelObj,
    );
  }
}
