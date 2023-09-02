// ignore_for_file: must_be_immutable

part of 'yam_bloc.dart';

/// Represents the state of Yam in the application.
class YamState extends Equatable {
  YamState({
    this.searchController,
    this.yamModelObj,
  });

  TextEditingController? searchController;

  YamModel? yamModelObj;

  @override
  List<Object?> get props => [
        searchController,
        yamModelObj,
      ];
  YamState copyWith({
    TextEditingController? searchController,
    YamModel? yamModelObj,
  }) {
    return YamState(
      searchController: searchController ?? this.searchController,
      yamModelObj: yamModelObj ?? this.yamModelObj,
    );
  }
}
