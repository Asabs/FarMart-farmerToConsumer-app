// ignore_for_file: must_be_immutable

part of 'mango_bloc.dart';

/// Represents the state of Mango in the application.
class MangoState extends Equatable {
  MangoState({
    this.searchController,
    this.mangoModelObj,
  });

  TextEditingController? searchController;

  MangoModel? mangoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        mangoModelObj,
      ];
  MangoState copyWith({
    TextEditingController? searchController,
    MangoModel? mangoModelObj,
  }) {
    return MangoState(
      searchController: searchController ?? this.searchController,
      mangoModelObj: mangoModelObj ?? this.mangoModelObj,
    );
  }
}
