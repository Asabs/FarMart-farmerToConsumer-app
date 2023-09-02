// ignore_for_file: must_be_immutable

part of 'cassava_bloc.dart';

/// Represents the state of Cassava in the application.
class CassavaState extends Equatable {
  CassavaState({
    this.searchController,
    this.cassavaModelObj,
  });

  TextEditingController? searchController;

  CassavaModel? cassavaModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cassavaModelObj,
      ];
  CassavaState copyWith({
    TextEditingController? searchController,
    CassavaModel? cassavaModelObj,
  }) {
    return CassavaState(
      searchController: searchController ?? this.searchController,
      cassavaModelObj: cassavaModelObj ?? this.cassavaModelObj,
    );
  }
}
