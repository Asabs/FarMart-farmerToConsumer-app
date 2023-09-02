// ignore_for_file: must_be_immutable

part of 'sweet_potato_bloc.dart';

/// Represents the state of SweetPotato in the application.
class SweetPotatoState extends Equatable {
  SweetPotatoState({
    this.searchController,
    this.sweetPotatoModelObj,
  });

  TextEditingController? searchController;

  SweetPotatoModel? sweetPotatoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        sweetPotatoModelObj,
      ];
  SweetPotatoState copyWith({
    TextEditingController? searchController,
    SweetPotatoModel? sweetPotatoModelObj,
  }) {
    return SweetPotatoState(
      searchController: searchController ?? this.searchController,
      sweetPotatoModelObj: sweetPotatoModelObj ?? this.sweetPotatoModelObj,
    );
  }
}
