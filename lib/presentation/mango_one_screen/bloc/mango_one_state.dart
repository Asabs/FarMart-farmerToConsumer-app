// ignore_for_file: must_be_immutable

part of 'mango_one_bloc.dart';

/// Represents the state of MangoOne in the application.
class MangoOneState extends Equatable {
  MangoOneState({
    this.searchController,
    this.mangoOneModelObj,
  });

  TextEditingController? searchController;

  MangoOneModel? mangoOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        mangoOneModelObj,
      ];
  MangoOneState copyWith({
    TextEditingController? searchController,
    MangoOneModel? mangoOneModelObj,
  }) {
    return MangoOneState(
      searchController: searchController ?? this.searchController,
      mangoOneModelObj: mangoOneModelObj ?? this.mangoOneModelObj,
    );
  }
}
