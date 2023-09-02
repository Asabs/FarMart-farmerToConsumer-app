// ignore_for_file: must_be_immutable

part of 'potato_bloc.dart';

/// Represents the state of Potato in the application.
class PotatoState extends Equatable {
  PotatoState({
    this.searchController,
    this.potatoModelObj,
  });

  TextEditingController? searchController;

  PotatoModel? potatoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        potatoModelObj,
      ];
  PotatoState copyWith({
    TextEditingController? searchController,
    PotatoModel? potatoModelObj,
  }) {
    return PotatoState(
      searchController: searchController ?? this.searchController,
      potatoModelObj: potatoModelObj ?? this.potatoModelObj,
    );
  }
}
